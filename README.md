# 💻 DevOps Mac OS automated setup 

This ansible playbook install and setup most of softwares and utilities for my DevOps environment.

## 🚥 Installation 

First of all clone or download this repository on your mac.

## 🚀 Usage

Just run the following command at the root of this project and enter your account password when prompted.

```sh
ansible-playbook setup-my-mac.yml -i inventory -K
```

You can customize setup editing `config.yml` config file.


## ✨What this playbook do

The complete list of softwares installed is in `config.yml` , but in summary here what the playbook do.

- Install homebrew and cask and install applications, utilities and quick look plugins. 

    Docker, Vagrant, slack, 1password, postman,...

- Clone my dotfile from github repository.

- Configure terminal

    Install iTerm2 (Solarized Dark theme, font-inconsolata)
    Install Zsh and configure options with oh-my-zsh

- Configure Mac OS 

    Show icons for hard drives, servers, and removable media on the desktop
    Avoid creating .DS_Store files on network volumes
    Finder: show status bar
    Save screenshots in PNG format
    Save screenshots to the Desktop/Screenshots folder

## Using Tags

Tags in Ansible are a powerful feature that allow you to control the execution of your playbook at a granular level. By using tags, you can choose to run only the tasks or roles associated with certain tags.

For example, if you want to run only the tasks that set up Go packages, you can use the `setup_gopackages` tag. Here's how you can do this:

```sh
ansible-playbook setup-my-mac.yml --tags setup_gopackages -K
```

## Improvements

Configure iTerm2 Profile with Solarized theme.
Add config for sync settings VScode and Brave
Configure VPN

## Testing the Playbook

Use Mac virtualbox https://github.com/geerlingguy/macos-virtualbox-vm

## See also

- https://blog.vandenbrand.org/2016/01/04/how-to-automate-your-mac-os-x-setup-with-ansible/
- http://www.nickhammond.com/automating-development-environment-ansible/
- https://github.com/simplycycling/ansible-mac-dev-setup/blob/master/main.yml
- https://github.com/mas-cli/mas
- https://github.com/geerlingguy/mac-dev-playbook
- https://github.com/osxc
- https://github.com/MWGriffin/ansible-playbooks/blob/master/sourcetree/sourcetree.yaml   
- https://github.com/sindresorhus/quick-look-plugins