


def operator(num_1, num_2)
	case @modifier
	when "+"
		num_1 + num_2		#addition operation
	when "-"
		num_1 - num_2
		#subtraction operation
	when "/"
    if num_2 == 0
      puts "can't divide by 0"
    else 
      num_1 / num_2
    end
		#division operation
	when "*"
		num_1 * num_2

		#multiplication operation
	when "clear"
		puts "Clearing numbers from memory"
	else
		puts "#{@modifier} is not a valid input. Please select from (+ - / *)"
	end
end

solution = nil
while true # possible solution? #&& gets.chomp != "quit"
  if solution
    # tell the user that they have a result
    # ask the user what they want to do: use result, clear, quit
    # if quit, exit
    # if clear, nil out solution variable and ask for the first number again
    # if use result continue
    num_1 = solution
  else
    puts "Please input first number"
    num_1 = gets.to_f
  end
    puts "Please enter an operation (+ - / *)"
    @modifier = gets.chomp
    puts "Please input second number or type quit"
    num_2 = gets.chomp.downcase
      if num_2 == "quit"
        exit 0 
      else
        num_2 = num_2.to_f
      end  
  puts "#{num_1} #{@modifier} #{num_2} is equal to #{operator(num_1, num_2)}"

  solution = operator(num_1, num_2) 
end

#result of answer should continue to build until user clears calculator

#store result as new num1, second gets input as num2
#operator method on new num1 and new gets num2
#loops until clear input

if gets.chomp == "clear"
  solution = nil
else
arithmetic
end