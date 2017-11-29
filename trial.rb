
require 'pry'

puts "the application is running"




def moving_rover1
  input = "5 5 1 2 S MMMMM 3 3 E MMMMM"
  input_splitted = input.split(' ')

  rover1_startingD = input_splitted[4]
  rover2_startingD = input_splitted[8]

  array_of_commands1 = []
  array_of_commands2 = []

  rover1_commands = input_splitted[5]
  rover2_commands = input_splitted[6]

  array_of_commands1 = rover1_commands.split('')
  array_of_commands2 = rover2_commands.split('')


  directions = ["N","E","S","W"]

  index_direction_rover1 = directions.index(rover1_startingD.to_s)
  index_direction_rover2 = directions.index(rover2_startingD.to_s)

  output = newdirection_rover1(array_of_commands1, array_of_commands2, input, index_direction_rover1, index_direction_rover2)

end





  def newdirection_rover1(set_of_directions1, set_of_directions2, input, index_dire_rover1, index_dire_rover2)

    input_splitted = input.split(' ')

    gridX = input_splitted[0].to_i
    gridY = input_splitted[1].to_i

    rover1_startingX = input_splitted[2].to_i
    rover1_startingY = input_splitted[3].to_i

    rover2_startingX = input_splitted[2].to_i
    rover2_startingY = input_splitted[3].to_i
  # rover1_startingD = input_splitted[4].to_s
  # rover2_startingD = input_splitted[8].to_s
    k = 0

  set_of_directions1.each do |move|

    if move == "R"
      index_dire_rover1 == 3 ? index_dire_rover1 = 0 : index_dire_rover1 = index_dire_rover1 + 1
      rover2_startingX = newdirection_rover_2(set_of_directions2, rover1_startingX, rover1_startingY, rover2_startingX, rover2_startingY, gridX, gridY, k)
      k += 1

    elsif move == "L"
      index_dire_rover1 == 0 ? index_dire_rover1 = 3 : index_dire_rover1 = index_dire_rover1 - 1
      rover2_startingX = newdirection_rover_2(set_of_directions2, rover1_startingX, rover1_startingY, rover2_startingX, rover2_startingY, gridX, gridY, k)
      k += 1

    else move == "M"
      if index_dire_rover1.odd?

      rover1_startingX = move_it_x(index_dire_rover1, rover1_startingX, gridX)
      rover2_startingX = newdirection_rover_2(set_of_directions2,index_dire_rover2, rover1_startingX, rover1_startingY, rover2_startingX, rover2_startingY, gridX, gridY, k)
      k += 1
      #rover2_startingX = move_to_x_rover_2(set_of_directions2, index_dire_rover1, rover2_startingX, rover2_startingY, gridX, gridY)
    else
      rover1_startingY = move_it_y(index_dire_rover1, rover1_startingY, gridY)
      rover2_startingX = newdirection_rover_2(set_of_directions2, index_dire_rover2, rover1_startingX, rover1_startingY, rover2_startingX, rover2_startingY, gridX, gridY, k)
      k += 1
    end
    end

end


  puts rover1_startingX
  puts rover1_startingY

  puts rover2_startingX
  puts rover2_startingY
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

def move_it_x_rover2(index_dir_rover, rover2_startingX, gridX)

  if index_dir_rover == 1
    if (rover2_startingX.to_i + 1) <= gridX
       return rover2_startingX = rover2_startingX.to_i + 1
    else
       return rover2_startingX.to_i
    end

  elsif index_dir_rover == 3
    if (rover2_startingX.to_i - 1) >= 0
       return rover2_startingX = rover2_startingX.to_i - 1
    else
       return rover2_startingX.to_i
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

def move_it_y_rover2(index_dir_rover2, rover2_startingY, gridY)

  if index_dir_rover2 == 0
    if (rover2_startingY.to_i + 1) <= gridY
       return rover2_startingY = rover2_startingY.to_i + 1
    else
       return rover2_startingY.to_i
    end

  elsif index_dir_rover2 == 2
    if (rover2_startingY.to_i - 1) >= 0
       return rover2_startingY = rover2_startingY.to_i - 1
    else
       return rover2_startingY.to_i
    end
  end

end

def newdirection_rover_2(set_of_directions2,index_dire_rover2, rover1_startingX, rover1_startingY, rover2_startingX, rover2_startingY, gridX, gridY, k)

        if set_of_directions2[k] == "R"
      index_dire_rover2 == 3 ? index_dire_rover2 = 0 : index_dire_rover2 = index_dire_rover2 + 1

    elsif set_of_directions2[k] == "L"
      index_dire_rover2 == 0 ? index_dire_rover2 = 3 : index_dire_rover2 = index_dire_rover2 - 1

    else set_of_directions2[k] == "M"
      if index_dire_rover2.odd?

      rover2_startingX = move_it_x_rover2(index_dire_rover2, rover2_startingX, gridX)
      #rover2_startingX = move_to_x_rover_2(set_of_directions2, index_dire_rover2, rover2_startingX, rover2_startingY, gridX, gridY)
    else
      rover2_startingY = move_it_y_rover2(index_dire_rover2, rover2_startingY, gridY)
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














