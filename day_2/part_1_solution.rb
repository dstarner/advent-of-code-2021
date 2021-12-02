# frozen_string_literal: true

horizontal_dx = 0
depth_dx = 0

File.readlines('input.txt').each do |line|
  direction, value_str = line.split
  value = value_str.to_i

  case direction
  when 'up'
    depth_dx -= value
  when 'down'
    depth_dx += value
  when 'forward'
    horizontal_dx += value
  end
end

puts "Mult: #{horizontal_dx * depth_dx}"
