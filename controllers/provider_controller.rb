require 'tty-prompt'
require '../models/provider'
require '../models/service'

class Provider_Controller
  @service_list = ['Mind Reading', 'Demonic Exorcism', 'Potion Therapy', 'Liver Transplants']

  @providers = [Provider.new('Junius', '234-486-9800', @service_list), Provider.new('Pearl', '978-123-5768', @service_list)]

  def self.index
    @providers.each do |provider|
      puts "#{provider.name}'s phone number is #{provider.phone_number}. (S)he provides these services: #{provider.services}"
    end
  end

  def self.add_provider 
    prompt = TTY::Prompt.new 
    name = prompt.ask('Name:')
    phone_number = prompt.ask('Phone number:')
    choices = @service_list
    services = prompt.multi_select("Please choose three services from the following list:", choices)
    provider = Provider.new(name, phone_number, services)
    @providers << provider
    puts "#{provider.name} is successfully added."
  end

  def self.remove_provider
    prompt = TTY::Prompt.new
    options = @providers.map { |provider| provider.name}
    choice = prompt.select("Pick a provider to remove", options)
    @providers = @providers.reject { |provider| provider.name == choice}
  end
end

Provider_Controller.index
Provider_Controller.add_provider
Provider_Controller.index