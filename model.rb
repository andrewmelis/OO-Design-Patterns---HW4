require './controller'
require './view'
require 'observer'

class Model
  include Observable

  attr_accessor :position, :positions, :position_red, :position_yellow, :position_green

    def initialize
    @position = 2     #starts at last position so that first enter will advance to zero
    setup_model
    @positions = [@position_red,@position_green,@position_yellow]
  end

  def setup_model
    #position 0
    @position_red = {:traffic => "Red: ON, Yellow: off, Green: off",
		    :pedestrian => "Don't Walk: ON, Walk: Off" }

    #position 1
    @position_green = {:traffic => "Red: off, Yellow: off, Green: ON",
		      :pedestrian => "Don't Walk: off, Walk: ON"}

    #position 2
    @position_yellow = {:traffic => "Red: off, Yellow: ON, Green: off",
		       :pedestrian => "Don't Walk: FLASHING, Walk: off"}
  end
  
  def next
    @position += 1
    if @position > 2
      @position = 0
    end

    changed	  #must update changed bool for ruby observer to work
    notify_observers(@positions[@position]) #calls other functions' update() methods by defaults
  end

end
