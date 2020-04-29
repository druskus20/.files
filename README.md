# My personal dotfiles 

### FAQ
#### How do you manage your dotfiles?
I use a git bare repository, you can see how looking at my .local/bin/dots script

#### How is it that you have a README.md file without it being on your home directory?

I figured out a workaround by running the following command: 
```git update-index --assume-unchanged "$HOME/README.md"```
That of course will not work if README.md is updated from the remote. Thats why I check if there is a README.md in my home folder and delete it. (see .local/bin/scripts/dots)


