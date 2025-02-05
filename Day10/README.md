# Day 10


## Table of Contents

- [My Learnings Today](#my-learnings-today-)
- [Challenges and Solutions](#challenges-and-solutions-)
- [Today's Logs](#todays-logs-)
- [Key Highlights](#key-highlights-)
- [References](#references-)



## My Learnings Today 🎯

- Shell Scripting
  - Output Redirection (using `>` or `>>`)
  - Input Redirection (using `<`)
  - Employing Pipes - output of one command to the input of another command
  - Performing maths
  - Exit code (e.g., `echo $?`)

- Learned by hands-on practice of:
  - File and Folder permission
  - User & Group management



## Challenges and Solutions 🚧

### Permission denied to read a file from a User

#### Problem

- At first, I added a new user named `devops_user` and created a folder `devops_workspace` and a file inside `project_notes.txt` inside it (in the home directory of the `devops_user`).
- Then set the permission of the folder as 750 and for the file 640.
- Also changed the file and folder's group to `devops_team` instead of `devops_user` which is the owner's group (didn't change ownership)
- Then I logged in as another user named `soumo` then added him to the `devops_team`, but after that the permission issue was coming while trying to read the file `/home/devops_user/devops_workspace/project_notes.txt` from user `soumo`.

#### The Root Cause of the issue

The `devops_user` folder in `/home` directory was only accessible by the `devops_user` group (and the user itself) but for others there was no permission to read or execute

#### Solution

I changed the group of the `/home/devops_user` folder. Then user `soumo` could also read the file `/home/devops_user/devops_workspace/project_notes.txt`.




## Today's Logs 📅

- Completed 2 out of 6 Tasks from Weeek 2 of 90DaysOfDevOps Challenge
- Practicing Linux commands and shell scripting
- Posted on LinkedIn:
  - Solution for "Pushed a Commit with the Wrong Message"
  - Permission Denied issue solution



## Key Highlights 🌟

- Got firm understanding of file & folder permissions in Linux
- Completed 2 Tasks and Started Task 3 of Week 2 Challenge



## References 📚

- [Shell Scripting for Beginner](https://youtu.be/7vhSOphYuqM?si=TwPtSkJPQCbtpBtX)
