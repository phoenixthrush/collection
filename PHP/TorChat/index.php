<?php
$messages_buffer_file = 'messages.json';
$messages_buffer_size = 500;

$rate_limit_interval = 3;
$rate_limit_file = 'rate_limit.json';

function sanitizeInput($data)
{
	return htmlspecialchars(trim($data));
}

if (isset($_POST['content'], $_POST['name'])) {

	$name = sanitizeInput($_POST['name']);
	$content = sanitizeInput($_POST['content']);

	$rate_limit_data = @file_get_contents($rate_limit_file);
	$rate_limits = $rate_limit_data ? json_decode($rate_limit_data, true) : [];
	$ip_address = $_SERVER['REMOTE_ADDR'];
	$current_time = time();

	if (isset($rate_limits[$ip_address]) && $current_time - $rate_limits[$ip_address] < $rate_limit_interval) {

		http_response_code(429);
		exit();
	}

	$rate_limits[$ip_address] = $current_time;
	file_put_contents($rate_limit_file, json_encode($rate_limits), LOCK_EX);

	$buffer_data = @file_get_contents($messages_buffer_file);
	$messages = $buffer_data ? json_decode($buffer_data, true) : [];

	if ($name !== '' && $content !== '') {

		$content = strlen($content) > 500 ? substr($content, 0, 500) : $content;

		$next_id = count($messages) > 0 ? end($messages)['id'] + 1 : 0;
		$new_message = ['id' => $next_id, 'time' => time(), 'name' => $name, 'content' => $content];
		$messages[] = $new_message;

		if (count($messages) > $messages_buffer_size) {
			$messages = array_slice($messages, -$messages_buffer_size, null, true);
		}

		$json_data = json_encode($messages, JSON_PRETTY_PRINT);
		file_put_contents($messages_buffer_file, $json_data, LOCK_EX);

		logMessageAsync($new_message);
	}

	exit();
}

function logMessageAsync($message)
{
	$dateTime = new DateTime();
	$log_line = $dateTime->format('Y-m-d H:i:s') . "\t" . str_replace("\t", ' ', $message['name']) . "\t" . str_replace("\t", ' ', $message['content']) . PHP_EOL;
	$log_file = 'chatlog.txt';

	file_put_contents($log_file, $log_line, FILE_APPEND | LOCK_EX);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Goofy Ah Chatroom</title>
	<script type="text/javascript">
		document.addEventListener("DOMContentLoaded", function () {
			var messagesList = document.getElementById('messages');
			var form = document.querySelector('form');
			var scrolling = false;

			messagesList.innerHTML = '';

			form.addEventListener('submit', function (event) {
				event.preventDefault();

				var nameInput = document.getElementById('name');
				var contentInput = document.getElementById('content');
				var name = nameInput.value.trim();
				var content = contentInput.value.trim();

				if (name === '' || content === '') {
					return;
				}

				var xhr = new XMLHttpRequest();
				xhr.open('POST', form.getAttribute('action'), true);
				xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				xhr.onreadystatechange = function () {
					if (xhr.readyState === 4 && xhr.status === 200) {
						contentInput.value = '';
						contentInput.focus();
					}
				};
				xhr.send('name=' + encodeURIComponent(name) + '&content=' + encodeURIComponent(content));
			});

			function pollForNewMessages() {
				if (!scrolling && messagesList.scrollTop + messagesList.clientHeight >= messagesList.scrollHeight) {
					var xhr = new XMLHttpRequest();
					xhr.open('GET', 'messages.json', true);
					xhr.setRequestHeader('Accept', 'application/json');
					xhr.onreadystatechange = function () {
						if (xhr.readyState === 4 && xhr.status === 200) {
							var messages = JSON.parse(xhr.responseText);
							if (messages) {
								var lastMessageId = messagesList.dataset.lastMessageId || -1;
								messages.forEach(function (message) {
									if (message.id > lastMessageId) {
										var date = new Date(message.time * 1000);
										var li = document.createElement('li');
										li.textContent = message.content;

										var small = document.createElement('small');
										small.textContent = date.toLocaleString() + ' - ' + message.name;

										li.insertBefore(small, li.firstChild);
										messagesList.appendChild(li);
										messagesList.dataset.lastMessageId = message.id;
									}
								});
								var messageItems = messagesList.querySelectorAll('li');
								if (messageItems.length > 50) {
									for (var i = 0; i < messageItems.length - 50; i++) {
										messagesList.removeChild(messageItems[i]);
									}
								}
								messagesList.scrollTop = messagesList.scrollHeight;
							}
						}
					};
					xhr.send();
				}
			}

			messagesList.addEventListener('scroll', function () {
				scrolling = true;
			});

			var scrollTimer;
			messagesList.addEventListener('scroll', function () {
				clearTimeout(scrollTimer);
				scrollTimer = setTimeout(function () {
					scrolling = false;
				}, 250);
			});

			pollForNewMessages();
			setInterval(pollForNewMessages, 3000);
		});

	</script>
	<style type="text/css">
		html {
			margin: 0;
			padding: 0;
		}

		body {
			margin: 2em auto;
			padding: 0;
			font-family: sans-serif;
			font-size: medium;
			color: #ccc;
			background-color: #222;
		}

		h1 {
			margin: 0;
			padding: 0;
			font-size: 2em;
			text-align: center;
		}

		p.subtitle {
			margin: 0;
			padding: 0 0 0 0.125em;
			font-size: 0.77em;
			color: gray;
			text-align: center;
			margin-bottom: 2em;
		}

		ul#messages {
			overflow: auto;
			height: 15em;
			margin: 1em auto;
			padding: 0 3px;
			list-style: none;
			border: 1px solid #555;
		}

		ul#messages li {
			margin: 0.35em 0;
			padding: 0;
		}

		ul#messages li small {
			display: block;
			font-size: 0.59em;
			color: #999;
		}

		ul#messages li.pending {
			color: #aaa;
		}

		form {
			font-size: 1em;
			margin: 1em auto;
			padding: 0;
		}

		form p {
			position: relative;
			margin: 0.5em 0;
			padding: 0;
		}

		form p input {
			font-size: 1em;
			background-color: #333;
			color: #ccc;
			border: 1px solid #555;
			padding: 0.5em;
			border-radius: 3px;
		}

		form p input#name {
			width: 10em;
			margin-top: 1em;
		}

		form p button {
			margin-left: 0.5em;
			background-color: #555;
			color: #ccc;
			border: 1px solid #555;
			padding: 0.5em 1em;
			border-radius: 3px;
			cursor: pointer;
		}

		ul#messages,
		form p,
		input#content {
			width: 40em;
			margin: 0 auto;
		}

		pre {
			font-size: 0.77em;
		}
	</style>
</head>

<body>

	<h1>Goofy Ah Chatroom</h1>
	<p class="subtitle">Feel free to share what's on your mind.</p>

	<ul id="messages">
	</ul>

	<form action="<?= htmlentities($_SERVER['PHP_SELF'], ENT_COMPAT, 'UTF-8'); ?>" method="post">
		<p>
			<input type="text" name="content" id="content" />
		</p>
		<p>
			<label>
				Name:
				<input type="text" name="name" id="name" value="Anonymous" />
			</label>
			<button type="submit">Send</button>
		</p>
	</form>

</body>

</html>