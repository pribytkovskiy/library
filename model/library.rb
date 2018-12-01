class Library
  include Uploader
  include Statistic
  attr_reader :books, :readers, :authors, :orders

  def initialize
    @readers = []
    @authors = []
    @books = []
    @orders = []
  end

  def add
    @books = load(:books)
    @readers = load(:readers)
    @authors = load(:authors)
    @orders = load(:orders)
  end

  def store
    save(:books, @books)
    save(:readers, @readers)
    save(:authors, @authors)
    save(:orders, @orders)
  end
end
