class Book
  include Validation
  attr_reader :title, :author

  def initialize(title, author)
    validate(title, author)
    @title = title
    @author = author
  end

  private

  def validate(title, author)
    check_class(title, String)
    check_string_for_empty(title)
    check_class(author, Author)
  end
end
