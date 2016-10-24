# DOTFILES

> my dotfiles collection

## ansible - `./playbook`

Provision **my** dotfiles in any host (local or remote) using ansible playbook.

### roles

- **zsh** (with `prezto`, loaded by `zgen`)
- **vim** (plugin manager is using `Plug`)
- **extras**
  - **tmux** (with autostart provided by plugin)
  - **fasd** - fast directory switching
  - **vimperator** - vim on firefox
  - **wakatime** - for recording coding activity

### requirements

- python 2 (local and remote)
- `ansible` pip package (local only)

### how to use

1 - base directory

```sh
cd playbook
```

2 - create `hosts/local`:

```ini
# sample

[local]
localhost

[local:vars]
# optional
wakatime_api_key = 'abcdefghijklmnopqrstuvwxyz'

# switch email in repository with:
# - git personal
# - git work
git_name = Akhyar Amarullah
git_email = akhyar@global.email
git_email_personal = akhyar@personal.email
git_email_work = akhyar@work.email

# enable only on remote host
tmux_autostart = false
```

3 - run playbook

```sh
ansible-playbook -l local setup.yml
```
