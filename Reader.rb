class Reader
  attr_reader  :name, :email, :city, :street, :house

  def initialize(name, email, city, street, house)
    Validation.check_string(name)
    Validation.check_string(email)
    Validation.check_string(city)
    Validation.check_string(street)
    Validation.check_integer(Integer(house))
    @name = name
    @email = email
    @city = city
    @street = street
    @house = Integer(house)
  end

  def to_s
    [@name, @email, @city, @street, @house].join(',')
  end
end