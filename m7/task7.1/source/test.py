from fizzbuzz import fizzbuzz
import unittest

class TestFizzBuzz(unittest.TestCase):

	def test_fizz(self):
		n = 12
		self.assertEqual(fizzbuzz(n), 'Fizz')

	def test_buzz(self):
		n = 25
		self.assertEqual(fizzbuzz(n), 'Buzz')

	def test_fizzbuzz(self):
		n = 15
		self.assertEqual(fizzbuzz(n), 'FizzBuzz')

	def test_type_error(self):
		with self.assertRaises(TypeError):
			fizzbuzz('qwerty')


if __name__ == "__main__":
	unittest.main()