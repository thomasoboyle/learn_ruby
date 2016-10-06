def translate(phrase)
  if phrase.include?(" ")
    array = phrase.split(" ")
    translated = []
    array.each do |word|
      translated << iggpay(word)
    end
    translated.join(" ")

  else
    iggpay(phrase)
  end
end

def iggpay(word)
  if word.start_with?("a", "e", "i", "o", "u")
    word_end = "ay"
  else
    letter = word[0]
    word = word.delete!(letter)

    if word.start_with?("a", "e", "i", "o", "u")
      word_end = letter + "ay"
    else
      second_letter = word[0]
      word = word.delete!(second_letter)
      word_end = letter + second_letter + "ay"
    end

  end
  word + word_end
end
