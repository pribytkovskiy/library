class Order
  attr_reader :book, :reader, :date

  def initialize(*params)
    @book = params[0][0]
    @reader = params[0][1]
    @date = Date.parse(params[0][2]) || Date.today
  end

  def to_s
    [@book, @reader, @date].join(',')
  end
end
