def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(word, times=2)
  words = word
  while times > 1
    words += " " + word
    times -= 1
  end
  words
end

def start_of_word(string, index)
  index -= 1
  letters = string[0..index]
end

def first_word(phrase)
  array = phrase.split(' ')
  array[0]
end

def titleize(title)
  array = title.split(' ')
  array.map do |i|
    i.capitalize! unless i == ('and' || 'or') # Still need to find a solution for words like "the" and "a"
  end
  array.join(" ")
end
