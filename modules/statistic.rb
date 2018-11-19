module Statistic
  ARR_PARAM_SORT = [:reader, :book].freeze

  def often_take_book_reader(popular_readers = 1)
    group_sort(:reader).map { |reader_orders| reader_orders.first }.take(popular_readers)
  end

  def most_popular_book(popular_book_count = 3)
    group_sort(:book).map { |book_orders| book_orders.first }.take(popular_book_count)
  end

  def readers_three_most_popular_books(popular_book_count = 3)
    group_sort(:book).take(popular_book_count).map { |array| array[1] }.flatten.map(&:reader).uniq.size
  end

  private

  def group_sort(param_sort)
    return unless ARR_PARAM_SORT.include? param_sort

    @orders.first.group_by(&:"#{param_sort}").sort_by { |_, order| -order.size }
  end
end
