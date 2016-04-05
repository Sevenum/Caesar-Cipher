def caesar_cipher(message,shift)
	
	alphabet = ("a".."z").to_a
	
	new_alphabet = Hash[alphabet.zip(alphabet.rotate(shift))]
	
	message.each_char.inject("") { |letter, char| letter + new_alphabet[char] }
	
end


caesar_cipher("hello", 5)
	