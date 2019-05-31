require 'tty-prompt'
require './controllers/service_controller'
require './controllers/provider_controller'

class Scheduler
	continueProgram = true
	prompt = TTY::Prompt.new
	while continueProgram do
		options = ["Add Provider", "Remove Provider", "Add Service", "Remove Service", "End Session"]
		choice = prompt.select("What would you like to do?", options)

		case choice
		when "Add Provider"
			Provider_Controller.index	
			Provider_Controller.add
		when "Remove Provider"
			Provider_Controller.index
			Provider_Controller.remove
		when "Add Service"
			Service_Controller.index
			Service_Controller.add
		when "Remove Service"
			Service_Controller.index
			Service_Controller.remove
		when "End Session"
			continueProgram = false
		end
	end
end
    

