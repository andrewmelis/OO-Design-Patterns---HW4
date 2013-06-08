require './model'
require './view'

class Controller

  #no need to make these setters(ie accessors) in this assignment
  attr_reader :model, :view

  def initialize(model, view)
    @model = model
    @model.add_observer(self)

    @view = view
  end

  def update(*args)
    handle_event
  end

  def handle_event
    view.next_instructions
    gets
    @model.next
  end

end
