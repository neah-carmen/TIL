First update the formulae and Homebrew itself:  
`brew update`  
You can now find out what is outdated with:  
`brew outdated`  
Upgrade everything with:  
`brew upgrade`  
Or upgrade a specific formula with:  
`brew upgrade <formula>`  
Upgrade installed casks:  
`brew cask upgrade`  
Upgrade both rbenv and ruby-build to stay on current Ruby build  
`brew upgrade rbenv ruby-build`  

How do I stop certain formulae from being updated?  
To stop something from being updated/upgraded:  
`brew pin <formula>`  
To allow that formulae to update again:  
`brew unpin <formula>`  
Note that pinned, outdated formulae that another formula depends on need to be upgraded when required as we do not allow formulae to be built against non-latest versions.  

How do I uninstall old versions of a formula?  
To remove them manually, simply use:  
`brew cleanup <formula>`  
Clean up everything at once:  
`brew cleanup`  
To see what would be cleaned up:  
`brew cleanup -n`  
To remove local cache and directories:  
`brew cleanup -s`  
To remove formula and its dependencies:  
`brew uninstall $(join <(brew leaves) <(brew deps <formula>))`  

To take a screen shot  
`shift + command + 5`  

to update rubygems  
`gem update --system`  
to update all install gems  
`gem update`  

`npm update`  
