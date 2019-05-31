require 'tty-prompt'
require '../models/provider'
require '../models/service'

class Provider_Controller
  attr_accessor :providers

  @service_types = ['Mind Reading', 
                    'Demonic Exorcism', 
                    'Potion Therapy', 
                    'Liver Transplants']

  @providers = [Provider.new('Junius', '234-486-9800', @service_types),     
                Provider.new('Pearl', '978-123-5768', @service_types),
                Provider.new('Rifty', '008-111-2590', @service_types)]

  def self.all
    @providers
  end

  def self.index
    puts "Here's the current list of providers:"

    @providers.map do |provider|
      puts "#{provider.name}'s phone number is #{provider.phone_number}."
      puts "(S)he provides these services: #{provider.services} every day of the week except for #{provider.day_off}."
      puts "––––––––––"
    end
  end

  def self.add
    prompt = TTY::Prompt.new 

    name = prompt.ask('Provider Name:')
    phone_number = prompt.ask('Phone number:')
    choices = @service_types
    services = prompt.multi_select("Please choose services from the 
                following list:", choices)
    day_off = prompt.select('Day off:', ['Monday', 'Tuesday', 'Wednesday', 
                'Thursday', 'Friday', 'Saturday', 'Sunday'])

    provider = Provider.new(name, phone_number, services, day_off)
    @providers << provider

    puts "\n"
    puts "#{provider.name} is successfully added."
    puts "\n"
    puts self.index
  end

  def self.remove
    prompt = TTY::Prompt.new
    options = @providers.map { |provider| provider.name}
    choice = prompt.select("Pick a provider to remove", options)

    @providers = @providers.reject { |provider| provider.name == choice}
    
    puts "\n"
    puts "#{choice} is successfully removed."
    puts "\n"
    puts self.index
  end

  # def self.view_calendar
  #   TODO
  # end
end