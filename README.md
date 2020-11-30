## Open Sesame! 

Sesame is a simple bash script to open all of the windows that you need for a project at once. It can currently open Android Studio, Atom, Git Bash and Chrome. More programs can be easily added to the bash script.  

To use Sesame with your projects, simply create a sesame config file for each project. List each program that you want to open for your project, followed by a colon and the filepath to open, on its own line. 

For example:  
``android-studio:<filepath>``  
``atom:<filepath>``  
``git-bash:<filepath>`` 

To open your project, run ``sesame <path-to-config-file>`` 

For ease of use, it is recommended to add an alias for each config file in your .bashrc, for example: 
``alias sesame="<path-to-sesame>"``
``alias project1="sesame <path-to-project1-config>"`` 

I hope to eventually add more automation so that the aliases do not have to be added manually. 
