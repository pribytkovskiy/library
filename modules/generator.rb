class Generator
  attr_reader :readers, :authors, :books, :orders

  def initialize
    @readers = []
    @authors = []
    @books = []
    @orders = []
  end

  def init_library
    init_authors
    init_books
    init_readers
    init_orders
    save_obj_to_file
  end

  def random_add(obj)
    obj.readers[0] << Reader.new(name: Faker::Name.name, email: Faker::Internet.email,
                             city: Faker::Address.city, street: Faker::Address.street_name,
                             house: Faker::Number.between(1, 100))
    obj.authors[0] << random_author = Author.new(Faker::Book.author, Faker::String.random)
    obj.books[0] << Book.new(Faker::Book.title, random_author)
  end

  private

  def init_authors
    @authors << @first_author = Author.new(Faker::Book.author, Faker::String.random)
    @authors << @second_author = Author.new(Faker::Book.author, Faker::String.random)
  end

  def init_books
    @books << @first_book = Book.new(Faker::Book.title, @first_author)
    @books << @second_book = Book.new(Faker::Book.title, @first_author)
    @books << @third_book = Book.new(Faker::Book.title, @first_author)
    @books << @fourth_book = Book.new(Faker::Book.title, @second_author)
  end

  def init_readers
    @readers << @first_reader = Reader.new(name: Faker::Name.name, email: Faker::Internet.email,
                                         city: Faker::Address.city, street: Faker::Address.street_name,
                                         house: Faker::Number.between(1, 100))

    @readers << @second_reader = Reader.new(name: Faker::Name.name, email: Faker::Internet.email,
                                          city: Faker::Address.city, street: Faker::Address.street_name,
                                          house: Faker::Number.between(1, 100))

    @readers << @third_reader = Reader.new(name: Faker::Name.name, email: Faker::Internet.email,
                                         city: Faker::Address.city, street: Faker::Address.street_name,
                                         house: Faker::Number.between(1, 100))

    @readers << @fourth_reader = Reader.new(name: Faker::Name.name, email: Faker::Internet.email,
                                          city: Faker::Address.city, street: Faker::Address.street_name,
                                          house: Faker::Number.between(1, 100))
  end

  def init_orders
    @orders << Order.new(@first_book, @first_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@first_book, @second_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@first_book, @third_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@first_book, @fourth_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@second_book, @first_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@second_book, @second_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@second_book, @third_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@third_book, @first_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@third_book, @second_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
    @orders << Order.new(@fourth_book, @first_reader, Faker::Date.backward(Faker::Number.between(1, 100)))
  end

  def save_obj_to_file
    File.open('./data/books.yml', 'w') { |file| file.write(@books.to_yaml) }
    File.open('./data/readers.yml', 'w') { |file| file.write(@readers.to_yaml) }
    File.open('./data/authors.yml', 'w') { |file| file.write(@authors.to_yaml) }
    File.open('./data/orders.yml', 'w') { |file| file.write(@orders.to_yaml) }
  end
end
