.PHONY: all clean

all: clean
	rm -rf build libs
	mkdir -p build libs "libs/webview"
	curl -sSLo "libs/webview/webview.h" "https://raw.githubusercontent.com/webview/webview/master/webview.h"
	curl -sSLo "libs/webview/webview.cc" "https://raw.githubusercontent.com/webview/webview/master/webview.cc"
	g++ -c libs/webview/webview.cc -std=c++11 -DWEBVIEW_STATIC -o build/webview.o
	gcc -c basic.c -std=c99 -Ilibs/webview -o build/basic.o
	g++ build/basic.o build/webview.o -framework WebKit -o build/basic && build/basic
	rm build/*

clean:
	rm -rf build/*