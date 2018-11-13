class Reader
  attr_reader :name, :email, :city, :street, :house

  def initialize(*params)
    @name = params[0][0]
    @email = params[0][1]
    @city = params[0][2]
    @street = params[0][3]
    @house = Integer(params[0][4])
    %w(name, email, city, street).each { |param| instance_eval("Validation.check_string(@#{param})") }
    Validation.check_integer(Integer(@house))
  end

  def to_s
    [@name, @email, @city, @street, @house].join(',')
  end
end
