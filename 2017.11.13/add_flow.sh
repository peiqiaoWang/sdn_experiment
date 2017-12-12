sudo ovs-ofctl -O OpenFlow13 add-flow s1 priority=1,in_port=1,actions=push_vlan:0x8100,set_field:4096-\>vlan_vid,output:4
sudo ovs-ofctl -O OpenFlow13 add-flow s1 priority=1,in_port=2,actions=push_vlan:0x8100,set_field:4097-\>vlan_vid,output:4
sudo ovs-ofctl -O OpenFlow13 add-flow s1 priority=1,in_port=3,actions=push_vlan:0x8100,set_field:4098-\>vlan_vid,output:4
sudo ovs-ofctl -O OpenFlow13 add-flow s1 priority=1,dl_vlan=0,actions=pop_vlan,output:1
sudo ovs-ofctl -O OpenFlow13 add-flow s1 priority=1,dl_vlan=1,actions=pop_vlan,output:2
sudo ovs-ofctl -O OpenFlow13 add-flow s1 priority=1,dl_vlan=2,actions=pop_vlan,output:3

sudo ovs-ofctl -O OpenFlow13 add-flow s2 priority=1,in_port=1,actions=push_vlan:0x8100,set_field:4096-\>vlan_vid,output:4
sudo ovs-ofctl -O OpenFlow13 add-flow s2 priority=1,in_port=2,actions=push_vlan:0x8100,set_field:4097-\>vlan_vid,output:4
sudo ovs-ofctl -O OpenFlow13 add-flow s2 priority=1,in_port=3,actions=push_vlan:0x8100,set_field:4098-\>vlan_vid,output:4
sudo ovs-ofctl -O OpenFlow13 add-flow s2 priority=1,dl_vlan=0,actions=pop_vlan,output:1
sudo ovs-ofctl -O OpenFlow13 add-flow s2 priority=1,dl_vlan=1,actions=pop_vlan,output:2
sudo ovs-ofctl -O OpenFlow13 add-flow s2 priority=1,dl_vlan=2,actions=pop_vlan,output:3
