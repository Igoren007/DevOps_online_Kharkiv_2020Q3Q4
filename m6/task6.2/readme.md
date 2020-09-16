# Task6.2

First of all, we will install and configure the DHCP server using **VBoxManage**, for which we will run the command:

![](images/Screenshot_2.png)

Check if VM2 and VM3 have received the appropriate network settings:

![](images/Screenshot_1.png)

![](images/Screenshot_11.png)

To remove the DHCP server, use the command:

![](images/Screenshot_3.png)



Now we will use the second method - the DNSMASQ utility. The screenshots below show the settings of the DHCP server itself, as well as the network settings for vm1 and vm2. We see that the hosts receive addresses and communication is working between them.

![](images/dhcp.png)

![](images/Screenshot_4.png)

![](images/Screenshot_5.png)

Now let's configure the DNS server on **VM1**.

![](images/Screenshot_8.png)

![](images/Screenshot_9.png)

![](images/Screenshot_10.png)

Now let's check the work of the dns server from the client machine

![](images/Screenshot_6.png)

![](images/Screenshot_7.png)