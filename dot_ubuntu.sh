# basic
apt install sudo
sudo apt update
# sudo apt -y upgrade
sudo apt -y install vim curl pip wget tmux tree
sudo apt -y autoremove

pip3 install -U pip
pip3 install -U nvitop

# zsh
sudo apt install -y zsh
sudo chsh -s /bin/zsh "$USER"

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

# zsh-autosuggstions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# spaceship theme
if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt --depth=1
fi
ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme

# copy .zshrc
cp -rf zshrc/ubuntu ~/.zshrc

# tmux
cp -rf .tmux.conf.local ~/.tmux.conf.local
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

# github profile
git config --global user.email "sunsense9@gmail.com"
git config --global user.name "Sunwoo Yu"

# vscode as git commit editor
git config --global core.editor "code --wait"

# miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
