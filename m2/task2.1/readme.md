## 1
The most popular hypervisors are **Hyper-V, VMware ESXi, VMware Workstation, KVM, Xen, OpenVZ, Proxmox.**

## 2
There are two types of hypervisors.
Hypervisors of the <mark>first type</mark> run directly on the hardware and do not require the installation of any operating system. For the monitor of virtual machines of the second type to work, an operating system is needed - through it, access to the hardware is made. The best hypervisor is the one that belongs to the first type, because its performance is higher, since they work directly with equipment.  

A hypervisor of the <mark>second type</mark> is also called hosted. This is an additional software layer located on top of the main operating system.
Hypervisors of the first type - Hyper-V, KVM, ESXi, of the second type - VMware Workstation, Oracle Virtual Box, OpenVZ.

* <mark>VMware ESXi</mark> is an Enterprise Class Virtualization Solution. Unlike VMware Workstation, ESXi is not an application, it can be said to be an operating system that is installed on bare hardware. ESXi is similar to Linux - the same commands, the same names of standard directories, however, it works completely on VMkernel's own proprietary kernel. If you want to buy ESXi, you need to buy VMware vSphere 6.  

* <mark>KVM</mark> is an easy-to-use, lightweight, and functional hypervisor. KVM allows you to deploy a virtualization platform in the shortest possible time.
Since guest operating systems interact with a hypervisor that is integrated into the Linux kernel, they have the ability to access hardware directly without the need to change the guest OS. KVM has its drawbacks: there are no powerful tools for managing virtual machines and KVM server, not the best stability.

* Those who are used to working with Microsoft consider <mark>Hyper-V</mark> the most convenient solution. Azure Cloud is built entirely on native MS products.

* <mark>Xen</mark> was launched in 2003 by XenSource. Xen is a cross-platform hypervisor that supports hardware virtualization and paravirtualization. It contains a minimal amount of code, since most of the components are taken out of the hypervisor. Xen is a fully open source hypervisor licensed under the GNU GPL 2.

* <mark>Oracle VM VirtualBox</mark> was created in 2007 by Sun Microsystems, then, after the takeover of its Oracle, work on the hypervisor continued. The source code for the base version is open source under the GNU GPL, so the hypervisor is popular and available for modification. VirtualBox is capable of supporting 64-bit guest systems, even if the host OS is 32-bit.

* <mark>VMware Workstation</mark> was developed by VMware in 1999. This is proprietary software working with x86-64 host operating systems Microsoft Windows, Linux, Ubuntu, CentOS. Supports over 200 guest OS. There is a free version with truncated features.

