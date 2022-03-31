@echo off
setlocal

set GST_DEBUG=2
gst-launch-1.0.exe -v ^
    rtspsrc location=rtsp://127.0.0.1:8554/test ^
    ! decodebin ^
    ! autovideosink


pause
endlocal
