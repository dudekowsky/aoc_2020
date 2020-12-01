#arr = [1721,979,366,299,675,1456]
arr = []
File.foreach("input") { |line| arr << line.to_i }

arr.each do |entry_a|
  arr.each do |entry_b|
    arr.each do |entry_c|
      if entry_a + entry_b + entry_c == 2020
        puts entry_a*entry_b*entry_c
      end
    end
  end
end