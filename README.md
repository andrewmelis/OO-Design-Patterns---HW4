Andrew Melis -- CSPP51050 -- hw4: MVC  
================

This is hw4 for CSPP51050, implementing the MVC pattern.  

This assignment was written in ruby.  
Run 'ruby runner.rb' to run the application.

Note that I used Ruby's built-in Observable class rather than  
building my own Observer class.

This allows me to "subclass" / mixin just one module, Observable into the Model,  
rather than subclassing both the View and Controller from Observer.  

The notify_observers() method calls an observer's update() method by default.  



