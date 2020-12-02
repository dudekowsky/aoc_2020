count = 0
File.foreach("input") do |line|
  positions, letter, password = line.split(' ')
  # zero index
  pos_a, pos_b = positions.split('-').map{|pos| pos.to_i - 1}
  letter = letter[0]
  first_check = password[pos_a] == letter
  second_check = password[pos_b] == letter
  valid = (first_check && !second_check) || (!first_check && second_check)
  puts "processing line #{line}. Validity is #{valid}"
  puts "letter #{letter} on pos_a: #{first_check}, letter #{letter} on pos_a: #{second_check}" 
  if valid
    count += 1
  end
end
puts count

