# Task5.3

![](images/Screenshot_1.png)

parameters of the find command:<br>
**-perm** - search files in Linux by access mode<br>
**-type f** - search only files<br>
**-exec** - To execute arbitrary commands for found files<br><br>
![](images/Screenshot_2.png)
**Hard links**<br>
The file is located only in a specific location on the hard drive. But this location can be referenced by multiple links from the file system. Each of the links is a separate file, but they lead to one section of the hard drive.

![](images/Screenshot_3.png)

**Soft links**<br>
Symbolic links are like regular shortcuts. They contain the address of the desired file on your file system. When you try to open such a link, the target file or folder opens. Its main difference from hard links is that when the target file is deleted, the link will remain, but it will point to nowhere, since the file actually no longer exists.<br>

![](images/Screenshot_4.png)

**mount** - View a list of all mounted devices<br>
**blkid** - View uuid for your sections<br>
**dmesg** - is designed to use the utility of the same name that displays messages from the OS kernel<br>

![](images/Screenshot_6.png)
![](images/Screenshot_7.png)