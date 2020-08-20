# Task5.6

Let's log in as a `guest`. Using the `blkid` command, we will determine the name of the mounted device and determine if the `acl` is enabled  it.

![](images/Screenshot_1.png)

We see that the `acl` is on.

Create directory `/tmp/acl_test` on behalf of the `guest` user. Using the `chmod` command, we will expose all users to `rwx` rights to this folder.

![](images/Screenshot_2.png)

Let's check that the user `utest` can actually exercise the privileges granted to him. For example, logged in as `utest`, create a file in `/tmp/acl_test`, say `utest.txt`.

![](images/Screenshot_3.png)

With the command `setfacl -m u:utest:r acl_test/` set the rights to the folder for the user `utest` only for reading.

![](images/Screenshot_4.png)

Let's try to perform actions on the folder on behalf of the user `utest`.

![](images/Screenshot_5.png)

Let's make sure that the `ACL` has a higher priority than the permissions set using `chmod`.
With the help of `chmod 740` we will set the rights for other users only, and with the help of ACL we will give full access for the user `utest`.

![](images/Screenshot_6.png)

We see that, as a result, the `utest` has the rights to write in this folder.

![](images/Screenshot_7.png)

Set the default permissions for the `utest` user to be read-only on the `acl_test` folder (use `-d` key). Thus, all files and folders that will be created inside the `acl_test` folder will receive these rights by default for the user `utest`. 

We will verify this by creating the file `utest3.txt` on behalf of `utest` and see the rights to it with the `getfacl` command.

![](images/Screenshot_10.png)

![](images/Screenshot_9.png)

Set the maximum permissions mask on the `/tmp/acl_test/utest.txt` file in such a way
as to allow read-only access. Check permissions with `getfacl`.

![](images/Screenshot_11.png)

Delete all ACL entries relative to the /tmp/acl_test directory.

![](images/Screenshot_8.png)