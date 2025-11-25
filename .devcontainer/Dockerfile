FROM mcr.microsoft.com/vscode/devcontainers/universal:latest

# 1. Cài đặt môi trường XFCE (Giao diện) và VNC (Kết nối từ xa)
RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    tightvncserver \
    dbus-x11 \
    x11-utils \
    x11-xserver-utils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 2. Cài đặt Wine (để chạy file .exe game nhẹ) - TÙY CHỌN
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y wine32

# 3. Tạo thư mục để chứa file cấu hình VNC
RUN mkdir -p /home/vscode/.vnc

# 4. Tạo file cấu hình khởi động cho VNC
RUN echo "#!/bin/bash\n\
xrdb $HOME/.Xresources\n\
startxfce4 &" > /home/vscode/.vnc/xstartup \
    && chmod +x /home/vscode/.vnc/xstartup
    
