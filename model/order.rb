class Order
  include Validation
  attr_reader :book, :reader, :date

  def initialize(book, reader, date = Date.today)
    @book = book
    @reader = reader
    @date = date
    WrongClassError.new.chek_instance(@book, Book)
    WrongClassError.new.chek_instance(@reader, Reader)
  end
end
