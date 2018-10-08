# install zsh tmux
sudo apt-get install -y tmux zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# copy tmux config
wget https://raw.githubusercontent.com/Vaayne/configs/master/tmux.conf && mv tmux.conf .tmux.conf


## Install Docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker ${USER}
docker run hello-world

## docker-compose
sudo apt install -y docker-compose

## Run Shadowsocks Service
docker run -d --restart=always -e "SS_PORT=28888" -e "SS_PASSWORD=ss-passwd" -e "SS_METHOD=aes-256-cfb" -e "SS_TIMEOUT=600" -e "KCP_PORT=29999" -e "KCP_MODE=fast" -e "MTU=1350" -e "SNDWND=1024" -e "RCVWND=1024" -p 28888:28888 -p 28888:28888/udp -p 29999:29999/udp --name ssserver imhang/kcp-shadowsocks-docker

# KCP Parameters for client
--crypt none --mode fast --mtu 1400 --sndwnd 128 --rcvwnd 512--parityshard 0 --nocomp


docker run -d -p 28888:28888 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 28888 -k ss-passwd -m aes-256-cfb



docker run --restart always --name ss -e SERVER_ADDR=0.0.0.0 -e PASSWORD=sspasswd -p 28888:8388 -p 28888:8388/udp -d shadowsocks/shadowsocks-libev