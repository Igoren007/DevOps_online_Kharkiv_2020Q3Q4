# Task5.5
First install the quota package on the system.

![](images/inst_quota.png)
Then we will edit the **/etc/fstab** file and bring it to this form:

![](images/fstab.png)
Let's create a **aquota.user** file, set the rights to it and enable quotas for the file system.

![](images/3user_quota.png)

Then we will try to copy the files to the /home/user directory. When the 100MB limit is reached, we see a warning.

![](images/er1.png)
And when the limit reached 150MB, we saw an error.

![](images/er2.png)
Quota report is below:

![](images/list.png)