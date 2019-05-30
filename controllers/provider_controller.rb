require 'tty-prompt'
require '../models/provider'

class Provider_Controller
  @providers = [Provider.new('Junius', '234-486-9800'), Provider.new('Pearl', '978-123-5768')]
  
  def self.index
    @providers.each do |provider|
      puts "#{provider.name}'s phone number is #{provider.phone_number}'"
    end
  end

  def self.add_provider 
    prompt = TTY::Prompt.new 
    name = prompt.ask('Name:')
    phone_number = prompt.ask('Phone number:')
    provider = Provider.new(name, phone_number)
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



Provider_Controller.add_provider
Provider_Controller.index
Provider_Controller.remove_provider
Provider_Controller.index

# class Provider_Controller
#   def create
#     name = $prompt.ask('Name: ')
#     phone_number = $prompt.ask('Phone #: ')
#     $providers[name] = Provider.new(name,phone_number)	
#     puts("Provider Name: "+ $providers[name].getName)
#     puts("Provider Phone #: " + $providers[name].getPhoneNumber) 
#   end

#   def add(name, phone_number, list_of_services)
#     Provider.new(name, phone_number, list_of_services)
#   end

#   def remove
#     name = $prompt.ask('Name: ')
#     if $providers.key?(name)
#       $providers.delete(name)
#       puts("#{name} successfully deleted")
#     else
#       puts("Provider does not exist")
#     end
#   end
# end