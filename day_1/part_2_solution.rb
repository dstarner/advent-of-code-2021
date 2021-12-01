# frozen_string_literal: true

increases_so_far = 0

# Break out the file to array to be easier to index
measurements = File.readlines('input.txt').map { |line| line.to_i } 

# iterate through lines 3 onwards, and calculate the last triplet
# measurement and the current triplet measurement, and compare if
# if has increased; if so, increment the final count value
measurements.each_with_index do |_, idx|
  next if idx < 3  # Skip the first measurement triplet

  last_measure = measurements.slice(idx - 3, 3).sum
  cur_measure = measurements.slice(idx - 2, 3).sum

  if cur_measure > last_measure
    increases_so_far += 1
    puts "#{last_measure} < #{cur_measure}"
  end
end

puts "Depth Increases: #{increases_so_far}"
