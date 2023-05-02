# SPEC_CPU_2017

Download the SPEC CPU iso file into a directory \
![image](https://user-images.githubusercontent.com/37037342/235575445-550e17c4-b808-4522-a699-b02ae64265fd.png)

Installing SPEC CPU 2017  
Prerequisites: \
For gcc and g++ \
	`sudo apt-get install build-essential` \
	`gcc --version` \
	`g++ --version` \
	![image](https://user-images.githubusercontent.com/37037342/235575798-2d9bf426-e2ef-4aa1-90b2-1cfe572ae351.png)

For gfortran \
	`sudo apt-get install gfortran` \
	`gfortran --version` \
	![image](https://user-images.githubusercontent.com/37037342/235575879-5402c9e3-33ec-4415-9761-fd0f8a5f1b9e.png)

Mount iso image (can alternatively mount to /mnt) \
	`mkdir /tmp/iso` \
	`sudo mount -o loop,ro cpu2017-1_0_5.iso /tmp/iso` \
	`cd /tmp/iso` \
	`mkdir <desired directory>/benchmarks` \
	`./install.sh` \
	![image](https://user-images.githubusercontent.com/37037342/235576597-987ca32a-7d1c-4b46-8555-abf247e220bf.png)

Unmount iso image and remove temporary folder\
	`cd -`  \
	`sudo umount /tmp/iso` \
	`rmdir /tmp/iso` \
Configuring \
	`cd ~/benchmarks` \
	`cp config/Example-gcc-linux-x86.cfg config/<your config file>.cfg` \
	`cp config/flags/gcc.xml config/flags/<your xml file>-gcc.xml` \
Edit flag and config files – Create one for yourhost computer \

Running the benchmarks \
	`. shrc`  \
	`cd config` \
	`runcpu --update` This command will solve a lot of expectant bugs, from personal experience
	`runcpu --config=<your config file>.cfg --iterations=3 --reportable <intrate or fprate or all>` \
ulimit -s unlimited required for fprate 
