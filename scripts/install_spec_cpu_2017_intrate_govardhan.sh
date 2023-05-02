
sudo apt-get install build-essential gcc g++ gfortran
gcc --version
g++ --version
gfortran --version
mkdir /tmp/iso
sudo mount -o loop,ro cpu2017-1_0_5.iso /tmp/iso
cd /tmp/iso
# replace desired directory below
mkdir <desired directory>/benchmarks
./install.sh
cd -
sudo umount /tmp/iso
rmdir /tmp/iso
cd ~/benchmarks
# replace your config file with a desired name
cp config/Example-gcc-linux-x86.cfg config/<your config file>.cfg
. shrc
cd config
runcpu --update
runcpu --config=<your config file>.cfg --iterations=3 --reportable intrate

