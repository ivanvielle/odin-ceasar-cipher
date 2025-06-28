def ceasar_cipher(string,shift)
  results = []
  words = string.downcase.split
  alphabet = ("a"..."z").to_a

  words.map {|word|
    letters_array = []

    word.chars.map {|letter|
      letter_index = alphabet.find_index(letter)
      ciphered_letter = alphabet[letter_index + shift]
      letters_array.push(ciphered_letter)
    }

    results << letters_array.join
  }

  results.join(" ")
end

puts ceasar_cipher("HELLO WORLD", 5)
puts ceasar_cipher("This is a test", 3)
puts ceasar_cipher("Alpha Chino", 18)