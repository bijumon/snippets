#FizzWrite a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".

for num in range(1,100):
	if num % 15 == 0:
		print "%d FizzBuzz" % num
	elif num % 3 == 0:
		print "%d Fizz" % num
	elif num % 5 == 0:
		print "%d Buzz" % num
	else:
		print num