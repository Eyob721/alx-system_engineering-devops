# 0x05. Processes and signals

## Mandatory

[0-what-is-my-pid](./0-what-is-my-pid)

- A bash script that displays its own PID.

[1-list_your_processes](./1-list_your_processes)

- A bash script that displays a list of currently running processes.
- The output must:
  - show all processes, for all users, including those which might not have a TTY
  - display in a user-oriented format
  - show process hierarchy

[2-show_your_bash_pid](./2-show_your_bash_pid)

- A bash script that displays lines containing the word `bash` from a list of
  processes.
- The `pgrep` command must not be used.

[3-show_your_bash_pid_made_easy](./3-show_your_bash_pid_made_easy)

- A bash script that displays the PID, along with the process name, of processes
  whose name contain the word `bash`.
- The `ps` command must not be used.

[4-to_infinity_and_beyond](./4-to_infinity_and_beyond)

- A bash script that displays `To infinity and beyond` indefinitely.

[5-dont_stop_me_now](./5-dont_stop_me_now)

- A bash script that stops the process of the `4-to_infinity_and_beyond` script.
- The `kill` must be used.

[6-stop_me_if_you_can](./6-stop_me_if_you_can)

- A bash script that stops the process of the `4-to_infinity_and_beyond` script.
- The `kill` and `killall` commands must not be used.

[7-highlander](./7-highlander)

- This bash script displays `To infinity and beyond` indefinitely with a
  `sleep 2` in between each iteration, and when a SIGTERM signal is sent it
  displays `I am invincible!!!`.

[8-beheaded_process](./8-beheaded_process)

- This script kills the process `7-highlander`.

## Advanced

[100-process_and_pid_file](./100-process_and_pid_file)

- A Bash script that:
  - creates the file /var/run/myscript.pid containing its PID
  - displays To infinity and beyond indefinitely
  - displays I hate the kill command when receiving a SIGTERM signal
  - displays Y U no love me?! when receiving a SIGINT signal
  - deletes the file /var/run/myscript.pid and terminates itself when receiving
    a SIGQUIT or SIGTERM signal

[manage_my_process](./manage_my_process)<br>
[101-manage_my_process](./101-manage_my_process)

- The `manage_my_process` bash script does the following:
  - it indefinitely writes `I am alive!` to the file `/tmp/my_process`
  - in between every `I am alive!` message, the it pauses for 2 seconds
- The `101-manage_my_process` bash script manages the `manage_my_process`
  process by using `{start|stop|restart}` commands, given as arguments.

[102-zombie.c](./102-zombie.c)

- A program that creates 5 zombie processes.
