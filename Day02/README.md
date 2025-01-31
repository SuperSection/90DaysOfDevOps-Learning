# Day 02


## Table of Contents
- [My Learnings Today](#my-learnings-today-)
- [Challenges and Solutions](#challenges-and-solutions-)
- [Today's Logs](#todays-logs-)
- [Key Highlights](#key-highlights-)
- [References](#references-)



## My Learnings Today 🎯
- Revised few basic Python topics
  - Variables and Data types
  - Conditionals, Loops
  - Lists, Dictionary

- LinkedIn Profile Building
  - Personal Branding / Market yourself
  - Better Profile optimizations tricks
    - Headline: must target specific field you want to be involved in
    - About Me should be well structured
    - Featured section
    - Regular posts and engagement in the community
    - Detailed Experience section (if have any)
    - Project details

  - What to INCLUDE and What SHOULD NOT be included
  - Be consistent and relevant to the topic

- Explored Generative AI topics
  - Concepts of most commonly used terms like AI, ML, Deep Learning
  - Difference in LLM (Large Language Model) and GAN (Generative Adversarial Network)

- Package management in Linux environment




## Challenges and Solutions 🚧

### Python Package Messed up and dpkg Nightmare in Ubuntu

- At first got error while initializing new python Virtual Environment, then resolving process led to all other problems down the line

- **Broken Python Package Installation:** Encountered critical issues like -
  - Python-related packages were broken
  - Partially installed few packages
  - Rendering the package manager (dpkg) unusable.

- **dpkg Errors:**
  - Persistent errors such as `sub-process /usr/bin/dpkg returned an error code (1)`
  - And missing py3compile during installation and removal of packages.

- **Failed Fix Attempts:** Standard commands like `apt --fix-broken install` and `dpkg --configure -a` failed to resolve dependency issues

- **Dependency Hell:** Could not remove or reinstall packages due to so many dependency conflicts


#### **Solution:**

- **Forceful Removal:** As error shown which package is dependent on which one, in that order I had to run the following command to remove all Python related packages.
  - `sudo dpkg --remove --force-remove-reinstreq <package-name>`

- **Reinstalling Python LTS version 3.12.8:**
```bash
sudo apt update
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev curl pkg-config

# Download Python Source Code
curl -O https://www.python.org/ftp/python/3.12.8/Python-3.12.8.tgz

# Extract the tarball
tar -xvf Python-3.12.8.tgz
cd Python-3.12.8

# Configure and Install
./configure --enable-optimizations
make -j 6  # Change 6 to the number of cores your system has for faster compilation
sudo make altinstall

# Verify Installation
python3.12 --version
```

- **Symlink Fixes:**
  - `sudo ln -sf /usr/local/bin/python3.12 /usr/bin/python3`
  - `sudo ln -sf /usr/local/bin/pip /usr/bin/pip`

- **pip Fix:** Pip was also reinstalled along the newly built Python binary
  - `pip install --upgrade pip`


#### Check the version of Python and pip
```bash
python3 --version
pip --version
```



## Today's Logs 📅
- Make few improvement to [My LinkedIn Profile](https://www.linkedin.com/in/soumo-sarkar/)
- Took the help of ChatGPT to solve the python packages messed up issue
- Make a post on LinkedIn about my [StackList project](https://www.linkedin.com/posts/soumo-sarkar_github-supersectionstack-list-stacklist-activity-7289515911487594496-FAth?utm_source=share&utm_medium=member_desktop) (written in C)



## Key Highlights 🌟
- Setup Python LTS version in Ubuntu Linux
- Learning LinkedIn optimization
- Got the basic idea of how Generative AI works and its related fields.



## References 📚
- [TrainWithShubham LMS Platform](https://www.trainwithshubham.com/)
- [ChatGPT](https://chatgpt.com/)
