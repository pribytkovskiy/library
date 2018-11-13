class Book
  attr_reader :title, :author

  def initialize(*params)
    @title = params[0]
    @author = params[1][0]
    Validation.check_string(title)
  end

  def to_s
    [@title, @author.name].join(',')
  end
end
