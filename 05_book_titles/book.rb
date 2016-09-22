class Book

  def title=(words)
    words.capitalize!
  end

  def title
    @title
  end
end
