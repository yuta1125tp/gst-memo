@echo off
setlocal

rem videotestsrcをautovideosinkで受けて表示
gst-launch-1.0 -v videotestsrc ! autovideosink

pause
endlocal
