import random

number = 0
tries = 0

while number != 42:
 number = random.randint(1,9999999)
 tries = tries + 1

print tries
