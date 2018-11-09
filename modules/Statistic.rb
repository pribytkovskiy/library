module Statistic
  def group_sort(param_sort)
    @order.group_by(&:"#{param_sort}").sort_by { |_, order| order.size }.reverse
  end

  def often_take_book_reader(popular_readers = 1)
    group_sort('reader').map { |reader_orders| reader_orders[0] }.take(popular_readers)
  end

  def most_popular_book(popular_book_count = 3)
    group_sort('book').map { |book_orders| book_orders[0] }.take(popular_book_count)
  end

  def readers_three_most_popular_books(popular_book_count = 3)
    group_sort('book').take(popular_book_count).map { |array| array[1] }.flatten.map(&:reader).uniq.size
  end
end
