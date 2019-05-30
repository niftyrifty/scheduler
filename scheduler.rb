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
		when "Remove Service"
			Service_Controller.remove_service	
		when "End Session"
			continueProgram = false
		end
		Service_Controller.index
	end
end
    

