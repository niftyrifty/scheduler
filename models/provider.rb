class Provider
  attr_accessor :name, :phone_number, :services, :day_off, :scheduled_appointments

  def initialize(name, phone_number, services=[], day_off='Sunday', scheduled_appointments=[])
      @name = name
      @phone_number = phone_number
      @services = services
      @day_off = day_off
      @scheduled_appointments = scheduled_appointments
  end
end
 