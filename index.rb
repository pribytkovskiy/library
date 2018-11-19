require './auto_load.rb'

library = Library.new
generator = Generator.new
generator.init_library
library.load
generator.random_add(library)
library.save

puts "Best reader: #{library.often_take_book_reader(library.orders)}"
puts "Most_popular_book: #{library.most_popular_book(library.orders)}"
puts "Ordered one of the three most popular books: #{library.readers_three_most_popular_books(library.orders)}"
