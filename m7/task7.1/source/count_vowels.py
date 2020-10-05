
def count_vowels(text):
	vowel_letters = ['a','e','i','o','u']
	lst = [i for i in text if i.lower() in vowel_letters]
	print(len(lst))

if __name__ == "__main__":
	count_vowels('annnmemmmtlo')