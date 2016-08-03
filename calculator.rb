
def operator(num_1, num_2)
	case @modifier
	when "+"
		num_1 + num_2		#addition operation
	when "-"
		num_1 - num_2
		#subtraction operation
	when "/"
		num_1 / num_2
		#division operation
	when "*"
		num_1 * num_2
		#multiplication operation
	when "clear"
		#clear operation
	else
		puts "#{@modifier} is not a valid input. Please select from (+ - / *)"
	end
end

puts "Please input first number"
num_1 = gets.to_f
puts "Please enter an operation (+ - / *)"
@modifier = gets.chomp
puts "Please input second number"
num_2 = gets.to_f

puts "#{num_1} #{@modifier} #{num_2} is equal to #{operator(num_1, num_2)}"
 
#result of answer should continue to build until user clears calculator

#store result as new num1, second gets input as num2
#operator method on new num1 and new gets num2
#loops until clear input

