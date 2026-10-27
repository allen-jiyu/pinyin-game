#!/bin/bash
cd "$(dirname "$0")"
PORT=8000
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "localhost")

echo "=============================================="
echo "  海底小纵队 · 拼音召唤  已启动"
echo "=============================================="
echo "在 iPad 的 Safari 里输入下面的地址（iPad 和这台 Mac 连同一个 Wi-Fi）："
echo ""
echo "      http://${IP}:${PORT}"
echo ""
echo "打开后：点右上角「分享」→「添加到主屏幕」，"
echo "之后就变成一个独立 App，可离线玩。"
echo ""
echo "按 Ctrl+C 停止服务。"
echo "=============================================="
python3 -m http.server "$PORT" --bind 0.0.0.0
