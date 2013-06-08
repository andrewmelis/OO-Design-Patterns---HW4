require './model'
require './view'
require './controller'

model = Model.new
view = View.new(model)
controller = Controller.new(model, view)

controller.handle_event
