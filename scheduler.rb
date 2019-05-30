require 'tty-prompt'
require './controllers/service_controller'
require './controllers/provider_controller'


class Scheduler
	continueProgram = true
	prompt = TTY::Prompt.new
	while continueProgram do
		options = ["Add Provider","Add Service", "Remove Provider", "Remove Service", "End Session"]
		choice = prompt.select("Choose an option", options)
		case choice
		when "Add Service"
			Service_Controller.add_service
			Service_Controller.index	
		when "Add Provider"
			Provider_Controller.add_provider
			Provider_Controller.index	
		when "Remove Service"
			Service_Controller.remove_service
			Service_Controller.index
		when "Remove Provider"
			Provider_Controller.remove_provider
			Provider_Controller.index
		when "End Session"
			continueProgram = false
		end
	end
end
    

