module Uploader
  def add_author
    @author = []
    File.open('./data/author.txt', 'r').each do |line|
      @author << Author.new(line.chomp.split(','))
    end
    @author
  end

  def add_reader
    @reader = []
    File.open('./data/reader.txt', 'r').each do |line|
      @reader << Reader.new(line.chomp.split(','))
    end
    @reader
  end

  def add_book(authors)
    @book = []
    File.open('./data/book.txt', 'r').each do |line|
      title = line.chomp.split(',')[0]
      author = authors.select { |obj| obj.name == line.chomp.split(',')[1] }
      @book << Book.new(title, author)
    end
    @book
  end

  def add_order(readers, books)
    @order = []
    File.open('./data/order.txt', 'r').each do |line|
      book = books.select { |obj| obj.title == line.chomp.split(',')[0] }[0]
      reader = readers.select { |obj| obj.name == line.chomp.split(',')[1] }[0]
      date = line.chomp.split(',')[2]
      @order << Order.new(book, reader, date)
    end
    @order
  end

  def store
    File.open('./data/author.txt', 'w') do |f|
      @author.each { |obj| f.puts obj.to_s }
    end
    File.open('./data/reader.txt', 'w') do |f|
      @reader.each { |obj| f.puts obj.to_s }
    end
    File.open('./data/book.txt', 'w') do |f|
      @book.each { |obj| f.puts obj.to_s }
    end
    File.open('./data/order.txt', 'w') do |f|
      @order.each { |obj| f.puts obj.to_s }
    end
  end
end
