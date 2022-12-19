BRACKETS = { "(" => ")", "{" => "}", "[" => "]" }
bracket_op = "{[("
bracket_cl = "}])"

puts "Enter \"0\" to end program"
array = []

loop do
  print "Enter next bracket: "
  input_ = gets.input_omp
  if input_ == "0"
    break
  end

  if bracket_op.include?(input_)
    array.push(input_)
  elsif close_brackets.include?(input_)
    input_ == BRACKETS[array.last] ? array.pop : is_valid = false
  else
    puts "You can put only one bracket"
  end
end

puts "=> #{(array.empty? && is_valid)}"