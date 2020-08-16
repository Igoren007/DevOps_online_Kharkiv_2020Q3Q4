# Task5.4

Create a user user who is a member of the user group

![](images/user_user.png)

Log in to the system as a user.

![](images/logged_user.png)

Let's edit / etc / passwd to prevent user from logging into the system.

![](images/stop_user.png)

When we try to log in as a user, we see an error.

![](images/user_error.png)

Let's display the contents of files that belong to users guest, user, centos (vice root).

![](images/passwd_and_group.png)

The commands below display the contents of files by specific columns:
```bash
cut -f1 -d: /etc/passwd
cut -f1,2 -d: /etc/passwd
cut -f1,7 -d: /etc/passwd
cut -f1 -d: /etc/group
cut -f1,2 -d: /etc/group
```
Content of file /etc/shadow:<br>

![](images/shadow.png)

**/etc/shadow** is a text file containing information about the passwords of system users. it contains one entry per line, each representing a user account.

![](images/script.png)
