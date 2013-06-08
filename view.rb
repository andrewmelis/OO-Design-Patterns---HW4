require './model'
require './controller'

class View 

  #no need to make this a setter(ie accessor) in this assignment
  attr_reader :model

  def initialize (model)
    @model = model
    @model.add_observer(self)
  end

  def update (position)
    show_traffic(position)
    show_pedestrian(position)
    end_instructions
  end

  def show_traffic(position)
    puts "Traffic Light:"
    puts position[:traffic]
    puts
  end

  def show_pedestrian(position)
    puts "Pedestrian Light:"
    puts position[:pedestrian]
    puts
  end

  def next_instructions
    puts "\n\nPress the <ENTER> key to change the light"
  end

  def end_instructions
    puts "(press ctrl+c to end the program)"
  end
end
