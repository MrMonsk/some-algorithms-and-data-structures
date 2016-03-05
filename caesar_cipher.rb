def caesar_cipher(input, shift_factor)
	lower_case_letters = ('a'...'z').to_a
	upper_case_letters = ('A'...'Z').to_a
	ciphered_sentence = ""

	input.each_char do |letter|
		if lower_case_letters.include? letter
      letter_index = lower_case_letters.index letter
      letter = lower_case_letters[(letter_index + shift_factor) % 26]
    elsif upper_case_letters.include? letter
      letter_index = upper_case_letters.index letter
      letter = upper_case_letters[(letter_index + shift_factor) % 26]
    end
		ciphered_sentence << letter
	end
	return ciphered_sentence
end

puts caesar_cipher("abcdefgh", -1)