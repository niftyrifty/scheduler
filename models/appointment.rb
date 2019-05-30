class Appointment
  attr_accessor :month, :day, :time, :service, :client, :provider

  def initialize(month, day, time, service, client, provider)
      @month = month
      @day = day
      @time = time 
      @service = service
      @client = client
      @provider = provider
  end
end