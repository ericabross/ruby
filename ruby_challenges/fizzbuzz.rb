i = 0 # integers begin with 0
while i < 101 # prints numbers 1-100
	if i%3 == 0 && i%5 == 0 #If number is divided by 3 and 5 and the remainder is equal to 0, it is a multiple of both 3 and 5
		puts "FizzBuzz"
	elsif i%3 == 0  #If number is divided by 3 and the remainder is equal to 0, it is a multiple of 3
		puts "Fizz"
	elsif i%5 == 0 #If number is divided by 5 and the remainder is equal to 0, it is a multiple of 5
		puts "Buzz"
	else
		puts i #prints any number that is not a multiple of 3 or 5
	end

	i+=1 #adds 1 to integers to print 1-100
end
			
			