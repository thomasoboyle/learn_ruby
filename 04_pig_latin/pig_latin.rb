module Pigtalker

  def translate(phrase)
    array = phrase.split(' ')
  end

  def piggie(array)
    array.each do |i|
      if start_with?("a", "e", "i", "o", "u")
        word_end = "ay"
      else
        letter = array[0]
        array = array.delete!(letter)
        if array.start_with?("a", "e", "i", "o", "u")
          word_end = letter + "ay"
        else
          second_letter = array[0]
          array = array.delete!(second_letter)
          word_end = letter + second_letter + "ay"
        end
      end
      array + word_end
    end
  end

end
