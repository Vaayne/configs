# install zsh tmux
sudo apt-get install -y tmux zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# copy tmux config
wget https://raw.githubusercontent.com/Vaayne/configs/master/tmux.conf -O .tmux.conf

# copy git config
wget https://raw.githubusercontent.com/Vaayne/configs/master/gitconfig -O .gitconfig


## Install Docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker ${USER}
docker run hello-world


## Run Shadowsocks
docker run --restart always --name ss -e SERVER_ADDR=0.0.0.0 -e PASSWORD=password -p 8388:8388 -p 8388:8388/udp -d shadowsocks/shadowsocks-libev

