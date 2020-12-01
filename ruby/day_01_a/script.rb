#arr = [1721,979,366,299,675,1456]
arr = []
File.foreach("input") { |line| arr << line.to_i }

arr.each do |entry|
  if arr.include?(2020 - entry)
    puts entry * (2020-entry)
  end
end