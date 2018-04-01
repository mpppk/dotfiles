# dotfiles

## Install ansible
### Docker

```shell
$ docker build -t mpppk/dotfiles .
```

### ubuntu or WSL

```
$ sh scripts/install_ansible_via_apt.sh
```

ref. [Installation Guide — Ansible Documentation](http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-ubuntu)

## windows provisioning

```sh
$ ansible-playbook -i hosts wsl_site.yml
```

### WSL provisioning

#### prerequisites sshd setup

```sh
$ ansible-playbook -i hosts wsl_site.yml
```

### Cmder setup
setting -> Startup -> Tasks

Commands: `C:\Windows\System32\bash.exe ~ -c fish -cur_console:p`
Task Parameters: `-icon "%USERPROFILE%\AppData\Local\lxss\bash.ico"`

## Ubuntu provisioning

```sh
$ ansible-playbook -i hosts ubuntu_site.yml
```

## MacOS provisioning

```sh
$ ansible-playbook -i hosts macos_site.yml
```
