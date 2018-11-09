class Author
  extend Validation
  attr_reader :name, :biography

  def initialize(name, biography, *all)
    Validation.check_string(name)
    @name = name
    @biography = biography
  end

  def to_s
    [@name, @biography].join(',')
  end
end
