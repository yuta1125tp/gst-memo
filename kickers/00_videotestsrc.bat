@echo off
setlocal

rem videotestsrc��autovideosink�Ŏ󂯂ĕ\��
gst-launch-1.0 -v videotestsrc ! autovideosink

pause
endlocal
