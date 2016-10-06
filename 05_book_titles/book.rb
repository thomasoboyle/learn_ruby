class Book
attr_reader :title

  def title=(title)
    @title = titlieze(title)
  end

  private

  def titlieze(title)
    stop_words = %w(and in the of an a)
    title.capitalize.split.map do |word|
      if stop_words.include?(word)
        word
      else
        word.capitalize
      end
    end.join(" ")
  end
end