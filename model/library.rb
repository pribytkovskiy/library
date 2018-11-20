class Library
  include Statistic
  attr_reader :books, :readers, :authors, :orders
  WHITE_LIST = [Book, Reader, Author, Order, Date].freeze

  def initialize
    @readers = []
    @authors = []
    @books = []
    @orders = []
  end

  def load
    CLASS_NAME.each do |name|
      instance_variable_set("@#{name}s", YAML.safe_load(File.read("#{PATH}#{name}s.yml"), WHITE_LIST, [], [], true))
    end
  end

  def save
    CLASS_NAME.each do |name|
      File.open("#{PATH}#{name}s.yml", 'w') { |f| f.write instance_variable_get("@#{name}s").to_yaml }
    end
  end
end
