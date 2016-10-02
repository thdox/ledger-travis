# NOT TRAVIS add-apt-repository
# sudo apt-get install openssh-server

# NOT TRAVIS add-apt-repository
# sudo apt-get install python-software-properties

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update -qq
sudo apt-get install -qq gcc-4.8 g++-4.8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 90
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 90

# NOT TRAVIS cmake make
# sudo apt-get install -qq cmake make

sudo add-apt-repository ppa:boost-latest/ppa --yes
sudo apt-get update -qq
sudo apt-get install -qq libboost1.55-dev libboost-date-time1.55-dev libboost-filesystem1.55-dev libboost-iostreams1.55-dev libboost-regex1.55-dev libboost-test1.55-dev

sudo apt-get install -qq libgmp-dev libmpfr-dev libedit-dev

curl -sL https://github.com/ledger/ledger/archive/master.tar.gz | tar xz
cd ledger-master

cmake .
make


