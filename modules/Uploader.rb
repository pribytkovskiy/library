module Uploader

  def add_author
    @author = []
    File.open("./data/author.txt", 'r').each do |line|
      @author << Author.new(line.chomp.split(','))
    end
    p @author
  end

  def add_book
    @book = []
    File.open("./data/book.txt", 'r').each do |line|
      @book << Book.new(line.chomp.split(','))
    end
    @book
  end

  def add_reader
    @reader = []
    File.open("./data/reader.txt", 'r').each do |line|
      @reader << Reader.new(line.chomp.split(','))
    end
    @reader
  end

  def add_order
    @order = []
    File.open("./data/order.txt", 'r').each do |line|
      @order << Author.new(line.chomp.split(','))
    end
    @order
  end

  def store
    
  end
end