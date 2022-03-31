@echo off
setlocal

set GST_DEBUG=2
C:\Users\yshira\Work\gstreamer\gst-rtsp-server-1.20.1\build\examples\test-launch.exe ^
    -p 5005 ^
    "( filesrc location=\"C:/Users/yshira/Videos/sVXEuGKuYVA.mp4\" ! decodebin ! x264enc ! rtph264pay name=pay0 pt=96 )"

pause
endlocal
