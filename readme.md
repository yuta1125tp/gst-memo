# gstreamer に関するチートシート

| soft                | version |
| ------------------- | ------- |
| gstreamer-1.0       | 1.20.1  |
| gstreamer-1.0-devel | 1.20.1  |

# gst-rtsp-server のビルド

XXX: 古いバージョンだと<gstreamer>/bin に pkg-config.exe が同梱されていないので、Windows ビルドができない。（pkg-config）に頼らずに手動で依存のパスを指定すれば問題ないかもしれないが、実現できていない。

```bat
rem 1.20.1はgithub上ではまだtagがないので、releaseページからtar.xzファイルをダウンロードして解答する。
cd <path to gst-rtsp-server-1.20.1>
set PATH=C:\gstreamer\1.0\msvc_x86_64\bin;%PATH%
meson build
meson compile -C build
build\examples\test-readme.exe
REM VLC media playerでrtsp://127.0.0.1:8554/testを受信
```
