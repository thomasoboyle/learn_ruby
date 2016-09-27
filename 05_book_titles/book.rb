class Book
  def title
    @title
  end

  def title=(title)
    @title = titlieze(title)
  end

  private

  def titlieze(title)
    lower_case = %w(and in the of an)
    title.capitalize.split.map do |word|
      if stop_words.include?(word)
        word
      else
        word.capitalize
      end.join(" ")
    end
  end
end