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

  def add_book
    @book = []
    File.open('./data/book.txt', 'r').each do |line|
      @book << Book.new(line.chomp.split(','))
    end
    @book
  end

  def add_order
    @order = []
    File.open('./data/order.txt', 'r').each do |line|
      @order << Order.new(line.chomp.split(','))
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
