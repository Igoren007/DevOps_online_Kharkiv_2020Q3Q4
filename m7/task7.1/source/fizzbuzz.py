def fizzbuzz(number):
	s = ''
	if number % 3 == 0:
		s += 'Fizz'
	if number % 5 == 0:
		s += 'Buzz'
	if not s:
		s += str(number)
	return(s)

if __name__ == "__main__":
	for i in range(100):
		print(fizzbuzz(i+1))