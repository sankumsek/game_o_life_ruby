require 'game_of_life'
require 'cell'
require 'board'



describe :cell do

  describe :initialize do
    it "calls cells into @world" do
      new_board = Board.new(12, 13)
      expect(new_board.world[0]).to be_an_instance_of(Cell)
    end
  end

end

describe :board do
  describe :initialize do
    it "should initialize a board with a set size" do
      new_board = Board.new(12,13)
      expect(new_board.height).to eq(12)
      expect(new_board.width).to eq(13)
    end
    it "array should equal length of 156" do
      new_board = Board.new(12, 13)
      expect(new_board.world.length).to eq (156)
    end
  end

  describe :find_index do
    it "uses x, y coordinates of specific cell to find array index" do
      new_board = Board.new(10, 3)
      expect(new_board.find_index(2,4)).to eq(10)
    end
  end

  describe :count_neighbor do
    it "returns number of neighbors that are alive" do
      new_board = Board.new(3,3)
      new_board.world[0].set_alive
      new_board.world[1].set_alive
      new_board.world[2].set_alive
      new_board.world[3].set_alive
      new_board.world[5].set_alive
      new_board.world[6].set_alive
      new_board.world[7].set_alive
      new_board.world[8].set_alive
      expect(new_board.count_neighbor(2,2)).to eq(8)
    end
  end

  #to finish later
  describe :generation do
    it "return the next world with the right coordinates" do
      new_board = Board.new(3,3)
      new_board.world[0].set_alive
      new_board.generation
      expect(new_board.new_world[0].is_alive).to eq(false)
    end
  end

end

