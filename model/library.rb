class Library
  include Statistic
  include Uploader
  attr_reader :books, :readers, :authors, :orders

  def initialize
    @readers = []
    @authors = []
    @books = []
    @orders = []
  end
end
