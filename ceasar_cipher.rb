def ceasar_cipher(string,shift)
  results = []
  # Split strings into comma separated array elements
  words = string.downcase.split
  # Alphabet range converted to array
  alphabet = ("a"..."z").to_a

  words.map {|word|
    letters_array = []

    # Iterate words and break them down into individual letters
    word.chars.map {|letter|
      letter_index = alphabet.find_index(letter)
      # Cipher letters into their equivalent alphabet index plus n (number of shift)
      ciphered_letter = alphabet[letter_index + shift]
      letters_array.push(ciphered_letter)
    }

    # Join letters and push them into the results array
    results << letters_array.join
  }

  results.join(" ")
end

puts ceasar_cipher("HELLO WORLD", 5)
puts ceasar_cipher("This is a test", 3)
puts ceasar_cipher("Alpha Chino", 18)