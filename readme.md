# gstreamer に関するメモ

| soft                | version |
| ------------------- | ------- |
| gstreamer-1.0       | 1.20.1  |
| gstreamer-1.0-devel | 1.20.1  |

# gst-rtsp-server のビルド

[ref](https://stackoverflow.com/a/66766874/18633169)

_古いバージョンだと<gstreamer>/bin に pkg-config.exe が同梱されてかも。pkl-config がないと Windows ビルドが難しい。（pkg-config）に頼らずに手動で依存のパスを指定すれば問題ないかもしれないが、実現できていない。_

```bat
rem 1.20.1はgithub上ではまだtagがないので、releaseページからtar.xzファイルをダウンロードして解答する。
cd <path to gst-rtsp-server-1.20.1>
set PATH=C:\gstreamer\1.0\msvc_x86_64\bin;%PATH%
meson build
meson compile -C build
build\examples\test-readme.exe
REM VLC media playerでrtsp://127.0.0.1:8554/testを受信
```
