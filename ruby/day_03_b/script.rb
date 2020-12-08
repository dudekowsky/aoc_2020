trees_encountered = {1.0 => 0, 3.0 => 0, 5.0 => 0, 7.0 => 0, 0.5 => 0}
field = []
File.foreach("input") do |line|
  field << line
end
width = field[0].length - 1 # important because periodicism
trees_encountered.keys.each do |downward_slope|
  field.each_with_index do |line, idx|
    access_position = downward_slope*idx%width
    next unless access_position%1 == 0
    if line[(downward_slope*idx)%width] == '#'
      trees_encountered[downward_slope] += 1
    end
  end
end
puts trees_encountered.values.inject(:*)
