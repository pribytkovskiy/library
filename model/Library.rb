class Library
  include Statistic
  include Uploader

  def initialize
    @order = add_order
    @book = add_book
    @reader = add_reader
    @author = add_author
  end

  def save
    store
  end
end
