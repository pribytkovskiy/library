class Library
  include Statistic
  include Uploader
  attr_reader :books, :readers, :authors, :orders

  def initialize
    @readers = []
    @authors = []
    @books = []
    @orders = []
  end

  def load
    @readers = YAML.safe_load(File.read('./data/readers.yml'), [Reader], [], [], true)
    @authors = YAML.safe_load(File.read('./data/authors.yml'), [Author], [], [], true)
    @books = YAML.safe_load(File.read('./data/books.yml'), [Book, Author], [], [], true)
    @orders = YAML.safe_load(File.read('./data/orders.yml'), [Order, Book, Author, Reader, Date], [], [], true)
  end
end
