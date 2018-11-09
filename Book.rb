class Book
  attr_reader :title, :author

  def initialize(title, author, *all)
    Validation.check_string(title)
    @title = title
    @author = author
  end

  def to_s
    [@title, @author].join(',')
  end
end