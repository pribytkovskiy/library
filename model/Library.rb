class Library
  include Statistic
  include Uploader

  def initialize
    @author = add_author
    @reader = add_reader
    @book = add_book(@author)
    @order = add_order(@reader, @book)
  end

  def save
    store
  end
end
