module Uploader
  include Initialize

  def load
    self.readers << YAML.safe_load(File.read('./data/readers.yml'), [Reader], [], [], true)
    self.authors << YAML.safe_load(File.read('./data/authors.yml'), [Author], [], [], true)
    self.books << YAML.safe_load(File.read('./data/books.yml'), [Book, Author], [], [], true)
    self.orders << YAML.safe_load(File.read('./data/orders.yml'), [Order, Book, Author, Reader, Date], [], [], true)
  end

  def save
    File.open('./data/readers.yml', 'w') { |file| file.write(readers.to_yaml) }
    File.open('./data/authors.yml', 'w') { |file| file.write(authors.to_yaml) }
    File.open('./data/books.yml', 'w') { |file| file.write(books.to_yaml) }
    File.open('./data/orders.yml', 'w') { |file| file.write(orders.to_yaml) }
  end
end
