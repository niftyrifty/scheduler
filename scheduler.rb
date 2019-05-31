require 'tty-prompt'
require './controllers/service_controller'
require './controllers/provider_controller'
require './controllers/appointment_controller'

class Scheduler
	continue_program = true
	prompt = TTY::Prompt.new
	while continue_program do
		options = ["Add Provider", "Remove Provider", "Add Service", "Remove Service", "Schedule an Appointment", "View Schedule of a particular Provider",  "End Session"]
		choice = prompt.select("What would you like to do?", options)

		case choice
		when "Add Provider"
			ProviderController.index	
			ProviderController.add
		when "Remove Provider"
			ProviderController.index
			ProviderController.remove
		when "Add Service"
			ServiceController.index
			ServiceController.add
		when "Remove Service"
			ServiceController.index
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
    

