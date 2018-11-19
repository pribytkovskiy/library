module Uploader

  def save
    File.open('./data/readers.yml', 'w') { |file| file.write(readers.to_yaml) }
    File.open('./data/authors.yml', 'w') { |file| file.write(authors.to_yaml) }
    File.open('./data/books.yml', 'w') { |file| file.write(books.to_yaml) }
    File.open('./data/orders.yml', 'w') { |file| file.write(orders.to_yaml) }
  end
end
