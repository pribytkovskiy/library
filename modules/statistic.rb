module Statistic
  def often_take_book_reader(orders, popular_readers = 1)
    group_sort(orders, :reader, popular_readers)
  end

  def most_popular_book(orders, popular_book_count = 3)
    group_sort(orders, :book, popular_book_count)
  end

  def readers_three_most_popular_books(orders, popular_book_count = 3)
    popular_orders = group_sort(orders, :book).take(popular_book_count).map { |book_orders| book_orders[1] }
    popular_orders.flatten.map(&:reader).uniq.size
  end

  private

  def group_sort(orders, param_sort, depth = nil)
    return unless ARR_PARAM_SORT.include? param_sort

    group_sort_param = orders.group_by(&param_sort).sort_by { |_, order| -order.size }

    return group_sort_param unless depth

    group_sort_param.map(&:first).take(depth)
  end
end
