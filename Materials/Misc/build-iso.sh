
# Currently (VyOS Helium) does NOT compile on anything else than debian squeeze (Debian 6)

#
cat > /etc/apt/source.list.d/vyos-build.list
deb http://backports.debian.org/debian-backports squeeze-backports main

#
apt-get update

#
apt-get -t squeeze-backports install squashfs-tools

#
apt-get install git autoconf automake dpkg-dev live-helper syslinux genisoimage

#
git clone https://github.com/vyos/build-iso.git
cd build-iso

#
export PATH=/sbin:/usr/sbin:$PATH
autoreconf -i
./configure
make iso

#
Warning: creating filesystem that does not conform to ISO-9660.
Size of boot image is 4 sectors -> No emulation
  4.61% done, estimate finish Tue Oct 22 09:28:18 2013
  9.20% done, estimate finish Tue Oct 22 09:28:18 2013
 13.80% done, estimate finish Tue Oct 22 09:28:18 2013
 18.39% done, estimate finish Tue Oct 22 09:28:18 2013
 22.99% done, estimate finish Tue Oct 22 09:28:18 2013
 27.58% done, estimate finish Tue Oct 22 09:28:18 2013
 32.19% done, estimate finish Tue Oct 22 09:28:18 2013
 36.78% done, estimate finish Tue Oct 22 09:28:18 2013
 41.38% done, estimate finish Tue Oct 22 09:28:18 2013
 45.97% done, estimate finish Tue Oct 22 09:28:18 2013
 50.57% done, estimate finish Tue Oct 22 09:28:19 2013
 55.16% done, estimate finish Tue Oct 22 09:28:19 2013
 59.76% done, estimate finish Tue Oct 22 09:28:19 2013
 64.35% done, estimate finish Tue Oct 22 09:28:19 2013
 68.96% done, estimate finish Tue Oct 22 09:28:19 2013
 73.55% done, estimate finish Tue Oct 22 09:28:19 2013
 78.15% done, estimate finish Tue Oct 22 09:28:19 2013
 82.74% done, estimate finish Tue Oct 22 09:28:19 2013
 87.34% done, estimate finish Tue Oct 22 09:28:19 2013
 91.92% done, estimate finish Tue Oct 22 09:28:20 2013
 96.53% done, estimate finish Tue Oct 22 09:28:20 2013
Total translation table size: 2048
Total rockridge attributes bytes: 9140
Total directory bytes: 22528
Path table size(bytes): 100
Max brk space used 12000
108786 extents written (212 MB)
Reading package lists... Done
Building dependency tree
Reading state information... Done
P: Deconfiguring file /etc/apt/apt.conf
P: Deconfiguring file /usr/sbin/policy-rc.d
P: Begin unmounting /sys...
P: Deconfiguring file /usr/sbin/initctl
P: Begin unmounting /selinux...
P: Begin unmounting /proc...
P: Begin unmounting /dev/pts...
P: Begin unmounting filesystems...
I: Done


#
ls -l livecd/
total 218180
-rw-r--r--  1 root root 223346688 Oct 22 09:28 binary.iso