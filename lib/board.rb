# require 'pry'
class Board

  attr_reader :height, :width, :world

  def initialize(height, width)
    @height = height.to_i
    @width = width.to_i
    @world = []
    @next_world = []

    @width.times do |y|
      @height.times do |x|
        @world << Cell.new(x,y)
      end
    end
  end

  def find_index(x,y)
    if width > 1
      return (@width * y) + x
    else
      return x
    end
  end

  def count_neighbor(x,y)
    count = 0

    # puts "#{@world[find_index(x+1, y)].is_alive}"
    # binding.pry
    #east = 5
    count += 1 if @world[find_index(x+1, y)].is_alive == true
    #west = 3
    count += 1 if @world[find_index(x-1, y)].is_alive == true
    #north = 1
    count += 1 if @world[find_index(x,   y-1)].is_alive == true
    #south = 7
    count += 1 if @world[find_index(x,   y+1)].is_alive == true
    #northwest = 0
    count += 1 if @world[find_index(x-1, y-1)].is_alive == true
    #northeast = 2
    count += 1 if @world[find_index(x+1, y-1)].is_alive == true
    #southwest = 6
    count += 1 if @world[find_index(x-1, y+1)].is_alive == true
    #southeast = 8
    count += 1 if @world[find_index(x+1, y+1)].is_alive == true
    return count
  end

  # def generation


  #   @width.times do |y|
  #     @height.times do |x|
  #       status = nil

  #       #doesn't go through the loop
  #       if @world[find_index(x,y)].is_alive == true
  #         status = @world[find_index(x,y)].set_dead if count_neighbor(x,y) < 2
  #         status = @world[find_index(x,y)].set_alive if (2..3).include?(count_neighbor(x,y))
  #         status = @world[find_index(x,y)].set_dead if count_neighbor(x,y) > 3
  #       else
  #         status = @world[find_index(x,y)].set_alive if count_neighbor(x,y) == 3
  #       end

  #       puts "#{x}, #{y}"
  #       @new_world << Cell.new(x,y)
  #       @new_world[find_index(x,y)].is_alive == status #maybe here
  #     end
  #   end

  #   @world = @new_world
  #   @new_world = []
  # end
end
