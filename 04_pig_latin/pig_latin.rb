def translate(word)
  if word.start_with?("a", "e", "i", "o", "u")
    word_end = "ay"
  else
    letter = word[0]
    word = word.delete!(letter)
    word_end = letter + "ay"
  end
  word + word_end
end