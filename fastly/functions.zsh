function fastly_route {
	sudo route add 10.215.0.0/24 fastlydev.local
}

function fusion {
  /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion $1 ~/Documents/fastlydev.vmwarevm nogui
}

function fusion2 {
  /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion $1 ~/Documents/fastlydev2.vmwarevm nogui
}

function morning {
	fusion start
	echo 'sleeping 15'
	sleep 5
	echo 'sleeping 10'
	sleep 5
	echo 'sleeping 5'
	sleep 5
	fastly_route
}

function morning2 {
	fusion2 start
	echo 'sleeping 15'
	sleep 5
	echo 'sleeping 10'
	sleep 5
	echo 'sleeping 5'
	sleep 5
	fastly_route
}
