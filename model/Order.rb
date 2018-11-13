class Order
  attr_reader :book, :reader, :date

  def initialize(*params)
    @book = params[0]
    @reader = params[1]
    @date = Date.parse(params[2]) || Date.today
  end

  def to_s
    [@book.title, @reader.name, @date].join(',')
  end
end
