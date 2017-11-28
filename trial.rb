
require 'pry'

puts "the application is running"

def moving_rover1
  input = "5 5 1 2 S MMMMMMM"
  input_splitted = input.split(' ')
  rover1_startingD = input_splitted[4]
  array_of_commands = []

  rover1_commands = input_splitted[5]
  array_of_commands = rover1_commands.split('')
  directions = ["N","E","S","W"]

  index_direction_rover1 = directions.index(rover1_startingD.to_s)
  output = newdirection_rover1(array_of_commands, input, index_direction_rover1)

end

#PSEUDOCODE

#0 define program running method
#0.1 it will be like : set grid - position rover 1 / 2
#                               - move rover 1 (check if move is possible)
#                               - move rover 2 (check if move is possible)
#                               - save new positions - start again

#1 define the method to move the rovers
  #1.1 separate the different rovers since the second moves second




  def newdirection_rover1(set_of_directions, input, index_dire_rover1)

    #expected output = "1 3 N"
    input_splitted = input.split(' ')
    gridX = input_splitted[0].to_i
    gridY = input_splitted[1].to_i
    rover1_startingX = input_splitted[2].to_i
    rover1_startingY = input_splitted[3].to_i

  # #rover1

  rover1_startingD = input_splitted[4].to_s




  set_of_directions.each do |move|

    if move == "R"
      index_dire_rover1 == 3 ? index_dire_rover1 = 0 : index_dire_rover1 = index_dire_rover1 + 1
    elsif move == "L"
      index_dire_rover1 == 0 ? index_dire_rover1 = 3 : index_dire_rover1 = index_dire_rover1 - 1

    else move == "M"
      if index_dire_rover1.odd?

      rover1_startingX = move_it_x(index_dire_rover1, rover1_startingX, gridX)

    else
      rover1_startingY = move_it_y(index_dire_rover1, rover1_startingY, gridY)
    end
    end

end
  puts rover1_startingX
  puts rover1_startingY
end

def move_it_x(index_dir_rover1, rover1_startingX, gridX)

  if index_dir_rover1 == 1
    if (rover1_startingX.to_i + 1) <= gridX
       return rover1_startingX = rover1_startingX.to_i + 1
    else
       return rover1_startingX.to_i
    end

  elsif index_dir_rover1 == 3
    if (rover1_startingX.to_i - 1) >= 0
       return rover1_startingX = rover1_startingX.to_i - 1
    else
       return rover1_startingX.to_i
    end
  end

end

def move_it_y(index_dir_rover1, rover1_startingY, gridY)

  if index_dir_rover1 == 0
    if (rover1_startingY.to_i + 1) <= gridY
       return rover1_startingY = rover1_startingY.to_i + 1
    else
       return rover1_startingY.to_i
    end

  elsif index_dir_rover1 == 2
    if (rover1_startingY.to_i - 1) >= 0
       return rover1_startingY = rover1_startingY.to_i - 1
    else
       return rover1_startingY.to_i
    end
  end

end



# def newposition_rover1(rover1_startingX, rover1_startingY, gridX, gridY, index_dir_rover1)



#   if index_dir_rover1 == 0
#     if (rover1_startingY.to_i + 1) <= gridY

#        rover1_startingY = rover1_startingY.to_i + 1
#     else

#        rover1_startingY.to_i
#     end

#   elsif index_dir_rover1 == 1
#     if (rover1_startingX.to_i + 1) <= gridX
#        rover1_startingX = rover1_startingX.to_i + 1
#     else
#        rover1_startingX.to_i
#     end

#   elsif index_dir_rover1 == 2
#     if (rover1_startingY.to_i - 1) >= 0
#        rover1_startingY = rover1_startingY.to_i - 1
#     else
#        rover1_startingY.to_i
#     end

#   elsif index_dir_rover1 == 3
#     if (rover1_startingX.to_i - 1) >= 0
#        rover1_startingX = rover1_startingX.to_i - 1
#     else
#        rover1_startingX.to_i
#     end

#   end

#   puts rover1_startingX
#   puts rover1_startingY
# end














