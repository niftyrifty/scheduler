require 'tty-prompt'
require './controllers/service_controller'
require './controllers/provider_controller'
require './controllers/appointment_controller'

class Scheduler
	FUNCTION_LOOKUP = {
		"Add Provider" => {
			controller: ProviderController,
			method_name: :add
		},
		"Remove Provider" => {
			controller: ProviderController,
			method_name: :remove
		},
		"Add Service" => {
			controller: ServiceController,
			method_name: :add
		},
		"Remove Service" => {
			controller: ServiceController,
			method_name: :remove
		},
		"Schedule an Appointment" => {
			controller: AppointmentController,
			method_name: :add
		},
		"View Schedule of a Particular Provider" => {
			controller: ProviderController,
			method_name: :view_schedule
		}
	}
	
	continue_program = true
	prompt = TTY::Prompt.new
	while continue_program do
		choice = prompt.select("What would you like to do?", FUNCTION_LOOKUP.keys)
		FUNCTION_LOOKUP[choice][:controller].send(FUNCTION_LOOKUP[choice][:method_name])
	
		# TODO: rewrite the end session function
		# Could consider using a key down, reference tty docs
		# when "End Session"
		# 	continue_program = false
		# end
	end
end
    

