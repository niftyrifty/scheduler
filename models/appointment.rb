class Appointment
  attr_accessor :client, :service, :provider, :date, :start_time

  def initialize(client, service, provider,date, start_time)
    @client = client
    @service = service
    @provider = provider
    @date = date
    @start_time = start_time    
  end
end