class Library
  include Statistic
  ARRAYS_NAME = %w(author book reader order).freeze

  def initialize
    @order = []
    @book = []
    @reader = []
    @author = []
  end

  def load
    ARRAYS_NAME.each do |name|
      return unless File.exist?("data/#{name}.txt")

      File.open("data/#{name}.txt", 'r').each do |line|
        param = line.chomp.split(',')
        instance_eval("@#{name} << #{name.capitalize}.new(param[0], param[1], param[2], param[3], param[4])")
      end
    end
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
