class Order
  attr_reader :book, :reader, :date

  def initialize(book, reader, date, *all)
    @book = book
    @reader = reader
    @date = Date.parse(date) || Date.today
  end

  def to_s
    [@book, @reader, @date].join(',')
  end
end
