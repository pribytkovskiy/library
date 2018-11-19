class Author
  include Validation
  attr_reader :name, :biography

  def initialize(name, biography = '')
    validate(name, biography)
    @name = name
    @biography = biography
  end

  private
  
  def validate(name, biography)
    check_class(name, String)
    check_string_for_empty(name)
    check_class(biography, String)
  end
end
