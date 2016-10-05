#!/usr/bin/ruby

def translate(phrase)
	vowels = ['a', 'e', 'i', 'o', 'u']
	translation = '' 
	words = phrase.split(' ')
	words.each do | word |
		if words.length > 2 


		end
		if word.include? ('sch')
			index = word.index('sch')
			if index == 0
				translation = translation + word[3..-1] + word[0..2] + 'ay' + ' '
				return translation.strip
			end
		end
		if word.include? ('qu')
			index = word.index('qu')
			if index == 0
				translation = translation + word[2..-1] + word[0..1] + 'ay' + ' '
				return translation.strip
			else
				translation = translation + word[(index + 2)..-1] + word[0..(index +1)] + 'ay' + ' '
				return translation.strip
			end
		end
		if (!vowels.include? word[2]) && (!vowels.include? word[1]) && (!vowels.include? word[0]) && words.length <= 1 
			translation = translation + word[3..-1] + word[0..2] + 'ay'
			return translation.strip
		else

		end
		if (!vowels.include? word[1]) && (!vowels.include? word[0]) && words.length <= 1 
			translation = translation + word[2..-1] + word[0..1] + 'ay'
		elsif vowels.include? word[0]
			translation = translation + word + 'ay' + ' '
		else 
			if words.length <= 1
				translation = translation + word.reverse + 'ay' + ' '
			else
				translation = translation + word[1..-1] + word[0] +'ay' + ' '
			end
		end
	end

	return translation.strip
end

