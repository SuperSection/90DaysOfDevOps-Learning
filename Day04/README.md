# Day 04


## Table of Contents
- [My Learnings Today](#my-learnings-today-)
- [Today's Logs](#todays-logs-)
- [Key Highlights](#key-highlights-)
- [References](#references-)



## My Learnings Today 🎯
- Studied few cirtical cases of Git and related commands [[Resource](#references-) is provided in the below]
  - `git reflog` - you will see a list of every thing you've done in git, across all branches
  - `git commit --amend` - to change the message on the last commit
  - `git commit --amend --no-edit` - new changes will become a part of the last commit
  - `git reset HEAD~ --hard` - remove the last commit from the master branch
  - `git reset HEAD~ --soft` - undo the last commit, but leave the changes available
  - `git diff --staged` - to see your changes which are add-ed to staging and you need to use a special flag
  - `git fetch origin` - downloads commits, files, and refs from a remote repository into your local repo
  - `git clean -d --force` - delete untracked files and directories
  - `git revert [commit-hash]` - git will create a new commit that undoes that commit
  - `git checkout [commit-hash] -- path/to/file` - the old version of the file will be in available

- Took deep dive into OSI and TCP/IP Models
  - Studied 7 layers of OSI Model
    - Application Layer
    - Presentation Layer
    - Session Layer
    - Transport Layer
    - Network Layer
    - Data Link Layer
    - Physical Layer

  - Built the understanding of how networking/communication takes place between all layers together

  - Actual implementation of networking: TCP/IP (Transmission Control Protocol/Internet Protocol) Model
    - **Application Layer:** Responsible for end-to-end communication and error-free delivery of data
    - **Transport:** Determines how data will be transmitted
    - **Network Layer:**  Specifies how to move packets between hosts and across networks
    - **Link / Network Access Layer:** Specifies how to send data across a physical piece of hardware




## Today's Logs 📅
- Attended the doubt solving session taken by Shubham Sir in [TWS Platform](https://www.trainwithshubham.com/)
- Wrote my 2nd Blog article: [OSI and TCP/IP Models Decoded](https://devops-easy.hashnode.dev/osi-and-tcp-ip-models)
- Posted my Blog in LinkedIn



## Key Highlights 🌟
- Learned more about OSI & TCP/IP Model
- Got to know useful commands in Git which can save our lives from ciritical situations
- Getting better reach in LinkedIn post, hope to improve more and provide greater value



## References 📚
- [Oh Shit, Git!?!](https://ohshitgit.com/)
- [OSI Model - Wikipedia](https://en.wikipedia.org/wiki/OSI_model)
- [TCP/IP Model - GeeksforGeeks](https://www.geeksforgeeks.org/tcp-ip-model/)
