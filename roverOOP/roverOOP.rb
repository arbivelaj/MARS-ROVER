require 'pry'

puts "the application is running"

class Grid
  def initialize(x, y)
    # Instance variables
    @x = x
    @y = y
  end

  def yy
    @y
  end

end

def run
  input = "5 5 1 3 N M 1 4 E M"
  input_splitted = input.split(' ')
  directions = ["N","E","S","W"]

  actions1 = input_splitted[5].split('')
  actions2 = input_splitted[9].split('')

  index_direction_rover1 = directions.index(input_splitted[4].to_s)
  index_direction_rover2 = directions.index(input_splitted[8].to_s)

  grid = Grid.new(gridX = input_splitted[0].to_i, gridY = input_splitted[1].to_i)
  rover1 = Rover.new(x = input_splitted[2].to_i, y = input_splitted[3].to_i, direction = index_direction_rover1)
  rover2 = Rover.new(x = input_splitted[6].to_i, y = input_splitted[7].to_i, direction = index_direction_rover1)

  k = 0

  actions1.each do |action|


    rover1.go1(action,rover2.xx, rover2.yy, grid.yy)
    #rover2.go2(actions2[k], rover1.xx, rover1.yy)
    puts "turn #{k}"
    puts "---------"
    k += 1
    rover1.coordinates
    puts "  -----  "
    rover2.coordinates
  end
end





class Rover
  def initialize(x, y, direction)
    # Instance variables
    @x = x
    @y = y
    @direction = direction
  end

  def coordinates
    puts @x
    puts @y
  end

  def xx
    @x
  end

  def yy
    @y
  end

  def go1(move, x2, y2, gridY)

    if move == "R"
      @direction == 3 ? @direction = 0 : @direction = @direction + 1
    elsif move == "L"
      @direction == 0 ? @direction = 3 : @direction = @direction - 1
    elsif move == "M"
      if @direction == 0
        if ((@y + 1) <= gridY) || (((@y + 1) == y2) && (@x == x2))
          @y
          puts "test for collision working"
        else
          @y = @y + 1
        end

      elsif @direction == 1
        if (@x + 1) <= gridX
          @x = @x + 1
        else
          @x
        end

      elsif @direction == 2
        if (@y - 1) >= 0
          @y = @y - 1
        else
          @y
        end

      elsif @direction == 3
        if (@x - 1) >= 0
          @x = @x - 1
        else
          @x
        end
      end
    end

  end

  def go2(move)

    if move == "R"
      @direction == 3 ? @direction = 0 : @direction = @direction + 1
    elsif move == "L"
      @direction == 0 ? @direction = 3 : @direction = @direction - 1
    elsif move == "M"
      if @direction == 0
        if ((@y + 1) <= gridY) || (@y)
          @y = @y + 1
        else
          @y
        end

      elsif @direction == 1
        if (@x + 1) <= gridX
          @x = @x + 1
        else
          @x
        end

      elsif @direction == 2
        if (@y - 1) >= 0
          @y = @y - 1
        else
          @y
        end

      elsif @direction == 3
        if (@x - 1) >= 0
          @x = @x - 1
        else
          @x
        end
      end
    end

  end

  def change_direction(move)
    if (move == "R") | (move = "L")
      @direction == 3 ? @direction = 0 : @direction = @direction + 1
    elsif move == "L"
      @direction == 0 ? @direction = 3 : @direction = @direction - 1
    end
  end

  def move
    if @direction == 0
      if (@y + 1) <= gridY
        @y = @y + 1
      else
        @y
      end

    elsif @direction == 1
      if (@x + 1) <= gridX
        @x = @x + 1
      else
        @x
      end

    elsif @direction == 2
      if (@y - 1) >= 0
        @y = @y - 1
      else
        @y
      end

    elsif @direction == 3
      if (@x - 1) >= 0
        @x = @x - 1
      else
        @x
      end
    end
  end



end
