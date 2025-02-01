# Day 07


## Table of Contents

- [My Learnings Today](#my-learnings-today-)
- [Today's Logs](#todays-logs-)
- [Key Highlights](#key-highlights-)
- [References](#references-)



## My Learnings Today 🎯

- Learned in depth about Linux file system
  - `/` is the root directory at the top of the file system hierarchy
  - `/boot` - used for storing files needed to boot the system.
  - `/home` - regular users store their personal data and configs
  - `/root` - home directory for the superuser (root)
  - `/etc` - config files specific to the system
  - `/tmp` -  world-writable space for temporary files, gets deleted after 10 days
  - `/var/tmp` - another temporary directory, in which files get deleted after 30 days
  - `/bin` - stores user commands
  - `/sbin` - stores system administration commands
  - `/local` - locally customized commands

- Few Commands I learned:
  - `cron` - daemon to execute scheduled commands
  - `sudo useradd -m <new_username> -s /bin/bash` - creates a new user with a home directory and sets the default shell to Bash
  - `tail -n+1 <file_path>` - displays entire contents of the file
  - `group <username>` - prints the groups a user is in

  - `gpasswd` - used for administering `/etc/group` and `/etc/gshadow`, features like:
    - Add or remove users from groups.
    - Set or remove group passwords (rarely used in modern environments).
    - Manage administrators for specific groups.



## Today's Logs 📅

- Attended "Linux Fundamentals" Live session on [TWS Platform](https://www.trainwithshubham.com/)
- Hosted my first web page using NGINX in EC2 Instance
- Reading CheetSheet of "Linux Fundamentals"
- Hands-on practice of few commands
- Started writing my Blog about "Linux File System: Beginner's Guide"



## Key Highlights 🌟

- Got firm understanding of Linux file system
- LinkedIn post about NGINX web page hosting got highest reach than any other post



## References 📚

- Junoon Batch 9 in [TWS Platform](https://www.trainwithshubham.com/)
