class Book
  def title
    @title
  end

  def title=(title)
    @title = titlieze(title)
  end

  private
  def titlieze(title)
    title.capitalize!
  end

end