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

Assignment Below:

- - - 

####Problem (Model-View-Controller):  


You will implement a traffic light system using the MVC architecture. The output of the program will look something like this:                                                                             
                                                                                                                                                                                                           
Status:                                                                                                                                                                                                    
Traffic Light 1:                                                                                                                                                                                           
Red: ON, Yellow: OFF, Green: OFF                                                                                                                                                                           
                                                                                                                                                                                                           
Pedestrian Light: Walk OFF, Don't Walk: ON                                                                                                                                                                 
                                                                                                                                                                                                           
Press any key to change light......<enter>                                                                                                                                                               
                                                                                                                                                                                                           
Status:                                                                                                                                                                                                  
Traffic Light 1:                                                                                                                                                                                         
Red: OFF, Yellow: OFF, Green: ON                                                                                                                                                                         
                                                                                                                                                                                                           
Pedestrian Light: Walk ON, Don't Walk: OFF                                                                                                                                                               
                                                                                                                                                                                                           
 Press any key to change light......<enter>                                                                                                                                                              
                                                                                                                                                                                                           
Status:                                                                                                                                                                                                 
Traffic Light 1:                                                                                                                                                                                        
Red: OFF, Yellow: ON, Green: OFF                                                                                                                                                                        
                                                                                                                                                                                                           
Pedestrian Light: Walk OFF, Don't Walk: Flashing                                                                                                                                                        
                                                                                                                                                                                                           
                                                                                                                                                                                                           
Press any key to change light......<enter>                                                                                                                                                           
                                                                                                                                                                                                           
etc.                                                                                                                                                                                                 

- - - 
                                                                                                                                                                                                           
#####What you need to implement                                                                                                                                                                           
                                                                                                                                                                                                           
A base class called Observer which has an update method (ref. page 129 Buschman). 
Classes View and Controller are subclasses of Observer. Controller takes all input from the user. 
Views 1 & 2 dis  plays the current status of the lights, whenever the status is updated. 
2 Models (TrafficLight & PedestrianLight)  contains the core functionality and actual status of lights.
                                                                                                                                                                                                           
Below is a sample interaction between the classes.
                                                                                                                                                                                                             
Controller gets user input and informs Model. Models changes the traffic light and updates Views and Controller. View sdisplays the new status of the lights and Controller awaits next user input.  
