# frozen_string_literal: true

# Use negative infinity as the first value to compare
# against so that the first comparison is always i
NEGATIVE_INFINITY = -1.0 / 0.0

increases_so_far = 0
last_value = NEGATIVE_INFINITY

File.readlines('input.txt').each do |line|
  value = line.to_i

  # Discount the first comparison since negative infinity was
  # just used as our starting value
  if value > last_value && last_value != NEGATIVE_INFINITY
    increases_so_far += 1
    puts "#{value} > #{last_value} (#{increases_so_far})"
  end

  # Update the last_value seen so that we can compare for the next line
  last_value = value
end

if increases_so_far == NEGATIVE_INFINITY
  puts 'No Depth Increases'
else
  puts "Depth Increases: #{increases_so_far}"
end
