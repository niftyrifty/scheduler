require 'tty-prompt'
require './controllers/service_controller'
require './controllers/provider_controller'
require './controllers/appointment_controller'

class Scheduler
	OPTIONS = ["Add Provider", "Remove Provider", "Add Service", "Remove Service", "Schedule an Appointment", "View Schedule of a particular Provider",  "End Session"]

	#change this into a hash of hashes
	FUNCTION_LOOKUP = {
		"Add Service" => {
			controller: ServiceController,
			method_name: :add
		},
		"Add Provider" => :add,
		"Remove Provider" => :remove
	}
	
	continue_program = true
	prompt = TTY::Prompt.new

	while continue_program do
		choice = prompt.select("What would you like to do?", OPTIONS)
		
		# Refactor gradually
		# 1. make every line identical to line 34-35 first
		# 2. and then collapse it down
		case choice
		when "Add Provider"	
			ProviderController.send(FUNCTION_LOOKUP[choice])
		when "Remove Provider"
			ProviderController.send(choice)
		when "Add Service"
			# ServiceController.add
			FUNCTION_LOOKUP[choice][:controller].send(FUNCTION_LOOKUP[choice][:method_name])
		when "Remove Service"
			ServiceController.remove
		when "Schedule an Appointment"
			AppointmentController.add
		when "View Schedule of a particular Provider"
			ProviderController.view_schedule
		when "End Session"
			continue_program = false
		end
	end
end
    

