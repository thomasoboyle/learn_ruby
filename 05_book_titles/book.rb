class Book
attr_reader :title
  def title=(words)
    words.capitalize!
  end
end
