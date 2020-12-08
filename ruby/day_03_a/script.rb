trees_encountered = 0
field = []
File.foreach("input") do |line|
  field << line
end
width = field[0].length - 1 # important because periodicism
field.each_with_index do |line, idx|
  if line[(3*idx)%width] == '#'
    puts "tree encountered at index #{idx} and #{(3*idx)%width}"
    trees_encountered += 1
  end
end
puts trees_encountered
