require './model'
require './view'
require './controller'

model = Model.new
#view = View.new(model)	    #will raise exception if try to run abstract View class
traffic_view = TrafficView.new(model)
pedestrian_view = PedestrianView.new(model)
controller = Controller.new(model, InstructionView)

controller.handle_event
