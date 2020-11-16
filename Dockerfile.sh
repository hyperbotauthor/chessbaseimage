echo "update"
apt-get update -y > log

echo "install curl"
apt-get install curl -y > log

echo "install sudo"
apt-get install sudo -y > log
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

echo "install git"
sudo apt-get install git -y > log

echo "load tablebases"
sudo git clone https://github.com/hyperbotauthor/syzygy /syzygy
rm -rf /syzygy/.git
ls /syzygy
