# Command line for the win

## Description

In this project we work on improving out command line skills using the [CMD CHALLENGE](https://cmdchallenge.com/) game.

CMD CHALLENGE is a pretty cool game challenging you on Bash skills. Everything is done via the command line and the questions are becoming increasingly complicated. It’s a good training to improve your command line skills!

For this project we take a screenshot of the tasks we have completed, each time we complete 9 tasks, and upload them to our sandboxes at Alx using `sftp`. We are required to do only the first 27 tasks of the game.

## Steps

Here are the step I had taken in doing this project

- First I prepared my repo and directory.
    - The screenshots of the task have to be in the `/root/alx-system_engineering-devops/command_line_for_the_win/` directory so:
    - `ssh` in to a sandbox and clone the  `alx-system_engineering-devops` repo into the `/root` directory
    - `cd` into `alx-system_engineering-devops` and create a directory for `command_line_for_the_win/`
    - after that prepare a `README` file
    - and now it is time to upload the screenshots, so exit out of `ssh`
- To upload the screenshots we use `sftp`, so:
    - connect to the sandbox using `sftp`
    - navigate to the `/root/alx-system_engineering-devops/command_line_for_the_win/` in your sandbox
    - and use the command `put <local_screenshot>` to upload the screenshots from your local machine
