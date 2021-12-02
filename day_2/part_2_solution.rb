# frozen_string_literal: true

aim = 0
horizontal_dx = 0
depth_dx = 0

File.readlines('input.txt').each do |line|
  direction, value_str = line.split
  value = value_str.to_i

  case direction
  when 'up'
    aim -= value
  when 'down'
    aim += value
  when 'forward'
    horizontal_dx += value
    depth_dx += (value * aim)
  end
end

puts "Mult: #{horizontal_dx * depth_dx}"
