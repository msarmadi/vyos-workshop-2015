#

sudo mkdir /opt/vyatta/share/vyatta-op/templates/show/echo
sudo nano /opt/vyatta/share/vyatta-op/templates/show/echo/node.def
help: Demonstration feature, just shows the argument
run: echo "If you give me an argument, I will show it. Cheers!"


# test in readonly mode
show echo

#
sudo mkdir /opt/vyatta/share/vyatta-op/templates/show/echo/node.tag
sudo nano /opt/vyatta/share/vyatta-op/templates/show/echo/node.tag/node.def
help: Show the argument
allowed: echo Anything
run: echo $3
