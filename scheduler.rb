require 'tty-prompt'
require './Service'
require './Provider'
require './Appointment'


class Scheduler
  createAppointmentPrompt = "appointment:new"
  createServicePrompt = "service:new"
  createProviderPrompt = "provider:new"
  listProvidersPrompt = "provider:list"
  createClientPrompt = "client:new"
  createAvailabilityPrompt = "availability:new"
  
  deleteServicePrompt = "service:delete"
  deleteProviderPrompt = "provider:delete"
  deleteAvailabilityPrompt = "availability:delete"
  endCommand = "end"

  def createAppointment()
    puts("createAppointment");
  end
  
  def createService()
    puts("createService");
  end

  continueProgram = true
while continueProgram do
  #make this the chooser again

	# command = $prompt.ask('Command: ')
	# # case ARGV[0]
	# case command
	# when createAppointmentPrompt
	# 	createAppointment();
	# when createServicePrompt
	# 	createService();
	# when createProviderPrompt
	# 	createProvider();
	# when createClientPrompt
	# 	createClientPrompt();
	# when createAvailabilityPrompt
	# 	createAvailability();
	# when listProvidersPrompt
	#        listProviders();	
	# when deleteServicePrompt
	# 	deleteService();
	# when deleteProviderPrompt
	# 	deleteProvider();
	# when deleteAvailabilityPrompt
	# 	deleteAvailability();
	# when endCommand
	# 	continueProgram = false	
	# else
	# 	puts ("ERROR: Incorrect input");
	# end	
end
    

