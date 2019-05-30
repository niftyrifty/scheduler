require 'tty-prompt'
require './models/provider'

prompt = TTY::Prompt.new

class Provider_Controller
#  provider = Provider.new(name, phone_number)
#  puts provider.name
#  puts provider.phone_number
end

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
