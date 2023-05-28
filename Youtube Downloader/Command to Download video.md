## Download Sofware
- Just download exe file from https://github.com/yt-dlp/yt-dlp
- you can also find same file in your onedrive>software>portables
- Put that exe on download folder or new folder
- open cmd with terminal inside that directory and type follwing command

### Simple Download with best quality
```
yt-dlp "url of youtube video"
```
```
yt-dlp "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
```
### Download only audio
```
yt-dlp -x --audio-format mp3 "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
```
### Download play list
- you can also use this download multiple videos, but you have to create public playlist for your video first
```
yt-dlp -i "https://www.youtube.com/playlist?list=PLlaN88a7y2_rosKX2WQt2VjFbjyDQXOkR"
```
### Download playlist but only audio
```
yt-dlp -x --audio-format mp3 -i PLlaN88a7y2_rosKX2WQt2VjFbjyDQXOkR
```
