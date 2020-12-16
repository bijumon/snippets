#!/Library/Frameworks/Python.framework/Versions/2.6/bin/python

# check_prime(number)
# first_prime is 2
# loop until floor(sqrt(number))
#
# start counter at first_prime
# increment counter
# if remainder(number/counter) == 0
#   then print "number is divisible counter, not prime"
#   break
# print number
# 

import math

def check_prime(number): 
    first_prime = 2.0
    counter = first_prime
    not_prime = 0

    while counter <= math.floor(math.sqrt(number)):
        #print '>>>',math.floor(math.sqrt(number))
        if number % counter == 0:
            not_prime = 1
            #print counter, '*', number/counter, '=', number
            break
        counter = counter + 1
    if not_prime == 0:
        print number, "is prime"
        return 0

def main(argv=None):
    primes = 0
    for number in range(2,99999):
        #print "number = ", number
        if check_prime(number) == 0:
            primes = primes + 1
    print primes,' primes found.'

if __name__ == "__main__":
    main()

#for n in range(2, 10):
#    for x in range(2, n):
#        if n % x == 0:
#            print n, 'equals', x, '*', n/x
#            break
#        else:
#            # loop fell through without finding a factor
#            print n, 'is a prime number'
#
