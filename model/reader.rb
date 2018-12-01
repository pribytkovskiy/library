class Reader
  include Validation
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    validate(name: name, email: email, city: city, street: street, house: house)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  private

  def validate(name:, email:, city:, street:, house:)
    check_class(name, String)
    check_string_for_empty(name)
    check_class(email, String)
    check_string_for_empty(email)
    check_class(city, String)
    check_string_for_empty(city)
    check_class(street, String)
    check_string_for_empty(street)
    check_class(house, Integer)
  end
end
