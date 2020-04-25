# git_automation for windows

## This simple automation tool allows you to run commands from the windows terminal 
### This replaces the long and dull process of logging into github on a webbrowser, creating a folder for your next project, going through the steps of adding the origin master and pushing it to the remote repo online

It automatically creates a local github repo and a remote github repo on the configurated account name.
    You run the command gitcreate followed by a the name of the repository you want to create.

### You can change the file paths in the bat files
    "%1" represents the argument you pass in after the command

## Note that you must move all files to the Windows-->System32 folder to run the command.
### To change the command line command you simply rename the "gitcreate.bat" file to the desired command

Remove the --private if the new repo is not a private (check out the gitclick documentation: https://github.com/maximilianschmitt/gitclick)

## Setup:(make sure you have git and npm package manager installed)
    npm install gitclick -g 
    gitclick add (to add user profile configurations -- get access token from github account)

## push.bat
    instead of:
    git pull origin master
    git add .
    git commit -am "message"
    git push origin master

    now all you have to do is 
    push message

    and it commits the changes and pushes it automatically in one command

## Example (in cmd/powershell):
    gitcreate testproject

- creates a repo named testproject
- a remote git repo is created in the configurated user
- a local .git is inititialised
- creates readme, adds readme and commits the files
- adds the remote origin and pushes the files to the origin master
- opens vscode with "code ."
