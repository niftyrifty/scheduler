class Provider
  attr_accessor :name, :phone_number, :services

  def initialize(name, phone_number, services=[])
      @name = name
      @phone_number = phone_number
      @services = services
  end
end
 