class Author
  extend Validation
  attr_reader :name, :biography

  def initialize(*params)
    @name = params[0][0]
    @biography = params[0][1]
    Validation.check_string(@name)
  end

  def to_s
    [@name, @biography].join(',')
  end
end
