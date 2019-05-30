class Provider
  def initialize(name, phone_number)
      @name = name
      @phone_number = phone_number
      @list_of_services = Hash.new
      @list_of_availability = Array.new(365)
  end

  def getName()
    @name
  end

  def getPhoneNumber()
    @phone_number
  end

end
