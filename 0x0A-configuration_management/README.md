# 0x0A. Configuration management

## Mandatory

[0-create_a_file.pp](./0-create_a_file.pp)

- Creates a file in `/tmp`.
- Requirements:
  - File path is `/tmp/school`
  - File permission is `0744`
  - File owner is `www-data`
  - File group is `www-data`
  - File contains `I love Puppet`

[1-install_a_package.pp](./1-install_a_package.pp)

- Installs `flask` from `pip3`.
- Requirements:
  - Install `flask`
  - Version must be `2.1.0`

[2-execute_a_command.pp](./2-execute_a_command.pp)

- Kills a process named `killmenow`.
- Requirements:
  - Must use the `exec` Puppet resource
  - Must use `pkill`
