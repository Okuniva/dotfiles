# Git Multi-User Setup

## Overview
You now have a complete multi-user Git setup that supports:
- Manual user switching with simple commands
- Automatic user switching based on directory patterns
- Easy management of multiple GitHub accounts

## Available Users
- **personal**: Aleksandr Valeev <218986220+aleksandr-valeev@users.noreply.github.com>
- **work**: Aleksandr Valeev <aleksandr.valeev@indriver.com>

## Manual User Switching Commands

```bash
# List available users
git user list

# Check current user
git user current

# Switch to personal account
git user personal

# Switch to work account  
git user work
```

## Automatic Directory-Based Switching

The system automatically switches to your work account when working in directories matching these patterns:
- `~/projects/indriver*/`
- `~/projects/inDriver*/`

All other directories use your personal account by default.

## Adding New Users

1. Create a new user config file:
```bash
# Example: Add a new client account
cat > ~/projects/dotfiles/git/users/client.gitconfig << EOF
[user]
    name = Your Name
    email = your.name@client.com

[github]
    user = your-github-username
EOF
```

2. Update the git-user script to include the new user in the case statement.

3. (Optional) Add directory patterns to conditional-includes.gitconfig:
```bash
[includeIf "gitdir:~/projects/client-*/"]
    path = ~/projects/dotfiles/git/users/client.gitconfig
```

## Files Structure
```
~/projects/dotfiles/git/
├── gitconfig                           # Main git config
├── aliases.gitconfig                   # Git aliases
├── colors.gitconfig                    # Color settings
├── conditional-includes.gitconfig      # Directory-based rules
├── git-user                           # User switcher script
└── users/
    ├── personal.gitconfig             # Personal account
    └── work.gitconfig                 # Work account
```

## SSH Keys (Optional Enhancement)
Consider setting up separate SSH keys for each account:

1. Generate keys:
```bash
ssh-keygen -t ed25519 -C "218986220+aleksandr-valeev@users.noreply.github.com" -f ~/.ssh/id_ed25519_personal
ssh-keygen -t ed25519 -C "aleksandr.valeev@indriver.com" -f ~/.ssh/id_ed25519_work
```

2. Add to SSH config:
```bash
# ~/.ssh/config
Host github.com-personal
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_personal

Host github.com-work  
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_work
```

3. Use different remotes:
```bash
# Personal repos
git remote add origin git@github.com-personal:username/repo.git

# Work repos  
git remote add origin git@github.com-work:username/repo.git
```
