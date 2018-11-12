class Library
  include Statistic
  include Uploader

  def initialize
    @order = []
    @book = []
    @reader = []
    @author = []
  end

  def load
    @author = add_author
    @book = add_book
    @reader = add_reader
    @order = add_order
  end

  def save
    ARRAYS_NAME.each do |name|
      File.open("data/#{name}.txt", 'w') do |f|
        instance_eval("@#{name}.each do |obj|
          f.puts obj.to_s
        end")
      end
    end
  end
end
