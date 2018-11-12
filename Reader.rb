class Reader
  attr_reader :name, :email, :city, :street, :house

  def initialize(*params)
    @name = params[0]
    @email = params[1]
    @city = params[2]
    @street = params[3]
    @house = Integer(params[4])
    Validation.check_string(@name)
    Validation.check_string(@email)
    Validation.check_string(@city)
    Validation.check_string(@street)
    Validation.check_integer(Integer(@house))
  end

  def to_s
    [@name, @email, @city, @street, @house].join(',')
  end
end
