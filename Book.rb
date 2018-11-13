class Book
  attr_reader :title, :author

  def initialize(*params)
    @title = params[0][0]
    @author = params[0][1]
    Validation.check_string(title)
  end

  def to_s
    [@title, @author].join(',')
  end
end
