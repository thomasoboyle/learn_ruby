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