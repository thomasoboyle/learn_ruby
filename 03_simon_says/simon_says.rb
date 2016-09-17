def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(words, times=2)
  (words + " ") * times # leaves a trailing space :/
end