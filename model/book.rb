class Book
  include Validation
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    StringError.new.check_string(@title)
    WrongClassError.new.chek_instance(@author, Author)
  end
end
