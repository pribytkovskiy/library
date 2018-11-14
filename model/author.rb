class Author
  include Validation
  attr_reader :name, :biography

  def initialize(name, *biography)
    @name = name
    @biography = biography
    StringError.new.check_string(@name)
  end
end
