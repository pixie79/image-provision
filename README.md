
Create a VirtualBox VM
- RAM >= 1024Mb
- Disk >= 20Gb
- Base Packages and default options from CentOS-6.6-x86_64-minimal.iso
- Root Password: image_vm_2015 (if you change it update the hosts file)

Once the box has completed building login and edit ifcfg-eth0 to enable network on boot.

    :::bash
    sed -i 's/ONBOOT=no/ONBOOT=yes/' /etc/sysconfig/network-scripts/ifcfg-eth0
    ifup eth0

Next select Devices from the VirtualBox menu -> Network -> Network Settings -> Port Forwarding and add a port forwarding rule as follows:

Name: ssh
Protocol: TCP
Host IP: 127.0.0.1 
Host Port: 2222
Guest IP: 10.0.2.15
Guest Port: 22

From your client pc you can now ssh to the CentOS base_vm as root. For the next set run the following commands on your client pc from the base of the GIT repo checkout:

    :::bash
    cp bash_vars.sh.sample bash_vars.sh
    # Edit the bash_vars.sh script with your correct settings
    source ./bash_vars.sh


python python-devel python-pip autoconf automake gcc


Credits:
 - https://github.com/INSANEWORKS/centos-packer
 - http://www.idevelopment.info/data/AWS/AWS_Tips/AWS_Management/AWS_10.shtml