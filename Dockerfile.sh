echo "update"
apt-get update -y > log

echo "install curl"
apt-get install curl -y > log

echo "install apt-utils"
apt-get install apt-utils -y > log

echo "install sudo"
apt-get install sudo -y > log
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - > log

echo "install git"
sudo apt-get install git -y > log

echo "load tablebases"
sudo git clone https://github.com/hyperbotauthor/syzygy /syzygy
rm -rf /syzygy/.git
ls /syzygy

echo "install yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -y > log
sudo apt-get install yarn -y > log
yarn --version

echo "install nodejs"
sudo apt-get install nodejs -y > log

echo "update node version"
npm cache clean -f > log
npm install -g n > log
n latest > log
node -v


