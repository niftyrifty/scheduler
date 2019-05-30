#TODO tty stuff
#TODO add appointment
#TODO appointment comparator to check conflicts

require 'tty-prompt'
require '../models/appointment'
require './provider_controller'

class Appointment_Controller
  def self.add
    prompt = TTY::Prompt.new
    client = prompt.ask("Client Name:")
    service = prompt.select('Service:', ['Mind Reading', 'Demonic Exorcism', 'Potion Therapy', 'Liver Transplants'])
    provider = prompt.select("Please select from these providers:", Provider_Controller.all.select { |provider| provider.services.include?(service)}.map(&:name))
    
    month = prompt.ask('Month:')
    day = prompt.ask('Day:')
    time = prompt.ask("Time(hours): ")
    
    appointment = Appointment.new(month, day, time, service, client, provider)
    puts appointment.month
    puts appointment.day
    puts appointment.time
    puts appointment.service
    puts appointment.client
    puts appointment.provider
  end
end

Appointment_Controller.add
