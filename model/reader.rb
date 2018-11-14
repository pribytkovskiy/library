class Reader
  include Validation
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
    StringError.new.check_string(@name)
    StringError.new.check_string(@email)
    StringError.new.check_string(@city)
    StringError.new.check_string(@street)
    IntegerError.new.check_integer(@house)
  end
end
