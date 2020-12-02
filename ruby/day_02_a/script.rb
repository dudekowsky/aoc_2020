count = 0
File.foreach("input") do |line|
  range, letter, password = line.split(' ')
  range = eval(range.gsub("-",".."))
  letter = letter[0]
  occurences = password.scan(/(?=#{letter})/).count
  valid_password = range.include?(occurences)
  count += 1 if valid_password
end
puts count

