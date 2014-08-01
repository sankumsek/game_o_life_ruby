class Cell

  attr_reader :number, :is_alive, :xcoord, :ycoord

  def initialize(xcoord, ycoord)
    @xcoord = xcoord
    @ycoord = ycoord
    @is_alive = false
  end

  def set_dead
    @is_alive = false
  end

  def set_alive
    @is_alive = true
  end

end
