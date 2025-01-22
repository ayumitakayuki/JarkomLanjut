# jan/22/2025 07:32:21 by RouterOS 6.48.6
# software id = XF27-WJ41
#
# model = RB941-2nD
# serial number = A1C30BB18CA4
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=192.168.20.2-192.168.20.254
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=ether2 name=dhcp1
/ip address
add address=192.168.100.1/24 interface=ether1 network=192.168.100.0
add address=192.168.20.1/24 interface=ether2 network=192.168.20.0
/ip dhcp-server network
add address=192.168.20.0/24 gateway=192.168.20.1
/ip route
add distance=1 dst-address=192.168.10.0/24 gateway=192.168.100.2
add distance=1 dst-address=192.168.30.0/24 gateway=192.168.100.2
