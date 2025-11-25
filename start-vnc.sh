#!/bin/bash
# Xóa file khóa cũ nếu có
rm -rf /tmp/.X1-lock
rm -rf /tmp/.X11-unix/X1

# Đặt mật khẩu cho VNC là '123456' (Bạn có thể đổi)
echo "123456" | vncpasswd -f > /home/vscode/.vnc/passwd
chmod 600 /home/vscode/.vnc/passwd

# Khởi động VNC Server
vncserver :1 -geometry 1280x720 -depth 24

echo "VPS ĐÃ SẴN SÀNG! HÃY KẾT NỐI VÀO CỔNG 5901"
