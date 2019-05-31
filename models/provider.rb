class Provider
  attr_accessor :name, :phone_number, :services, :day_off

  def initialize(name, phone_number, services=[], day_off='Sunday')
      @name = name
      @phone_number = phone_number
      @services = services
      @day_off = day_off
  end
end
 