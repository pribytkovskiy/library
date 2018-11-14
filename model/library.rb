class Library
  include Statistic
  include Uploader
  include Initialize
  attr_reader :books, :readers, :authors, :orders

  def initialize
    @readers = []
    @authors = []
    @books = []
    @orders = []
  end
end
