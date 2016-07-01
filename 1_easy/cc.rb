def caesar_cipher(sentence, shift_factor)
  lower_case_letters = ('a'..'z').to_a
  upper_case_letters = ('A'..'Z').to_a
  ciphered_sentence  = ""

  sentence.each_char do |letter|
    if lower_case_letters.include? letter
      letter_index = lower_case_letters.index letter
      letter = lower_case_letters[(letter_index + shift_factor) % 26]
    elsif upper_case_letters.include? letter
      letter_index = upper_case_letters.index letter
      letter = upper_case_letters[(letter_index + shift_factor) % 26]
    end
    ciphered_sentence << letter
  end
  puts ciphered_sentence
end

caesar_cipher("abcde", -1)