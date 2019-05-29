require 'tty-prompt'
prompot = TTY::Prompt.new

createAppointmentPrompt = "appointment:new"
createServicePrompt = "service:new"
createProviderPrompt = "provider:new"
createClientPrompt = "client:new"
createAvailabilityPrompt = "availability:new"

deleteServicePrompt = "service:delete"
deleteProviderPrompt = "provider:delete"
deleteAvailabilityPrompt = "availability:delete"


def createAppointment()
	puts("createAppointment");
end

def createService()
	puts("createService");
end

def createProvider()
	puts("createProvider");
end

def createClient()
	puts("createClient");
end

def createAvailabilityPrompt()
	puts("createAvailability");
end

def deleteService()
	puts("deleteService");
end

def deleteClient()
	puts("deleteClient");
end

def deleteAvailabilityPrompt()
	puts("deleteAvailability");
end

case ARGV[0]
when createAppointmentPrompt
	createAppointment();
when createServicePrompt
	createService();
when createProviderPrompt
	createProvider();
when createClientPrompt
	createClientPrompt();
when createAvailabilityPrompt
	createAvailability();
when deleteServicePrompt
	deleteService();
when deleteProviderPrompt
	deleteProvder();
when deleteAvailabilityPrompt
	deleteAvailability();
else
	puts ("ERROR: Incorrect input");
end	
