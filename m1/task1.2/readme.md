# Task1.2
I created a private repository named DevOps_online_Kharkiv_2020Q3Q4 and formed a folder structure in it.
Then I cloned this repository to my computer with the command 
```bash
git clone https://github.com/Igoren007/DevOps_online_Kharkiv_2020Q3Q4.git
```

I created branches develop, images, styles and in each branch I made changes to different files.

Then I merged branch images into branch develop, styles into develop. 
I had a conflict with the index.html file because I incorrectly modified it. 
```bash
$ git merge styles
Auto-merging m1/task1.2/index.html
CONFLICT (content): Merge conflict in m1/task1.2/index.html
Automatic merge failed; fix conflicts and then commit the result.
```

I resolved this conflict by changing the file index.html.


Then I merged develop into master. 
The results of the “git reflog” command were saved to the file “task1.2_GIT.txt”.
The reflog is an ordered list of the commits that HEAD has pointed to: it's undo history for your repo.
Then I added trainer AndriiKostromytskyi in this repository.

