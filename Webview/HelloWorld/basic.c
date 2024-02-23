#include "webview.h"
#include <stdio.h>
#include <stdlib.h>

#ifdef _WIN32
#include <windows.h>
#endif

#ifdef _WIN32
int WINAPI WinMain(HINSTANCE hInst, HINSTANCE hPrevInst, LPSTR lpCmdLine,
                   int nCmdShow)
{
    (void)hInst;
    (void)hPrevInst;
    (void)lpCmdLine;
    (void)nCmdShow;
#else
int main()
{
#endif
    webview_t w = webview_create(0, NULL);
    webview_set_title(w, "Goofy Ahh App");
    webview_set_size(w, 480, 320, WEBVIEW_HINT_NONE);

    FILE *file = fopen("index.html", "r");
    if (file == NULL)
    {
        printf("Error opening file.");
        return 1;
    }

    fseek(file, 0, SEEK_END);
    long file_size = ftell(file);
    fseek(file, 0, SEEK_SET);

    char *html_content = (char *)malloc(file_size + 1);
    if (html_content == NULL)
    {
        printf("Memory allocation failed.");
        fclose(file);
        return 1;
    }

    if (fread(html_content, 1, file_size, file) != file_size)
    {
        printf("Error reading file.");
        fclose(file);
        free(html_content);
        return 1;
    }

    fclose(file);
    html_content[file_size] = '\0';

    webview_set_html(w, html_content);

    webview_run(w);

    webview_destroy(w);
    free(html_content);
    return 0;
}
