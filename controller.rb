require './model'
require './view'

class Controller

  #no need to make these setters(ie accessors) in this assignment
  attr_reader :model, :view

  def initialize(model, instruction_view) 
    @model = model
    @model.add_observer(self)

    @view = instruction_view
  end

  def update(*args)
    handle_event
  end

  def handle_event
    view.end_instructions
    view.next_instructions
    gets
    @model.next
  end

end
