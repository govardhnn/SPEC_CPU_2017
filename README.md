# SPEC_CPU_2017

Installing SPEC CPU 2017  
Prerequisites: \
For gcc and g++ \
	`sudo apt-get install build-essential` \
	`gcc --version` \
	`g++ --version` \
For gfortran \
	`sudo apt-get install gfortran` \
	`gfortran --version` \
Mount iso image (can alternatively mount to /mnt) \
	`mkdir /tmp/iso` \
	`fuseiso /tmp/iso cpu2017-1_0_5.iso` \
	`cd /tmp/iso` \
	`mkdir ~/benchmarks` \
	`./install.sh` \
Unmount iso image \
	`cd -`  \
	`sudo umount /tmp/iso` \
	`rmdir /tmp/iso` \
Configuring \
	`cd ~/benchmarks/SPEC17` \
	`cp config/Example-gcc-linux-x86.cfg config/<your config file>.cfg` \
	`cp config/flags/gcc.xml config/flags/<your xml file>-gcc.xml` \
Edit flag and config files – Create one for yourhost computer \
Running the benchmarks \
	`. shrc`  \
	`cd config` \
	`runcpu --config=<your config file>.cfg --iterations=3 --reportable <intrate or fprate or all>` \
ulimit -s unlimited required for fprate 
