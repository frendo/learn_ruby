#!/usr/bin/ruby

def echo(word)
	return word
end
def shout(words)
	return words.upcase
end
def repeat(word, times = 2)
	repetition = (word + ' ') * (times - 1)
	repetition = repetition + word
	return (repetition)
end
def start_of_word(word, int_chars)
	return (word[0..(int_chars-1)])
end
def first_word(words)
	return (words.partition(' ').first)
end
def titleize(words)
  new_words = words.split
  new_words = new_words.each {|word| word.capitalize! unless ((word != new_words[0]) && ("a an the and but for if nor once or so at by down for from in into like near of off on onto over past to upon with".include? word ))}.join(" ")
  return new_words
end
