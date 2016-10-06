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
  letters = []
  while !word.start_with?("a", "e", "i", "o", "u",)
    letters << piggify(word)
  end
  word_end = word_ender(letters)
  word + word_end
end

def piggify(word)
  letter = word[0]
  if letter == "q"
    word = word.delete!(letter + "u")
    letter = letter + "u"
  else
    word = word.delete!(letter)
    letter
  end
end

def word_ender(letters)
  letters.join + "ay"
end