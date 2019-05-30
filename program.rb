require 'tty-prompt'
load 'classes.rb'
$prompt = TTY::Prompt.new

$providers = Hash.new
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

def createProvider()
	name = $prompt.ask('Name: ')
	phone_number = $prompt.ask('Phone #: ')
	$providers[name] = Provider.new(name,phone_number)	
	puts("Provider Name: "+ $providers[name].getName)
	puts("Provider Phone #: " + $providers[name].getPhoneNumber) 
end

def createClient()
	puts("createClient");
end

def createAvailability()
	puts("createAvailability");
end
def listProviders()
	puts($providers);
end
def deleteService()
	puts("deleteService");
end

def deleteClient()
	puts("deleteClient");
end

def deleteAvailability()
	puts("deleteAvailability");
end

def deleteProvider()
	name = $prompt.ask('Name: ')
	if $providers.key?(name)
		$providers.delete(name)
		puts("#{name} successfully deleted")
	else
		puts("Provider does not exist")
	end
end
continueProgram = true
while continueProgram do
	command = $prompt.ask('Command: ')
	# case ARGV[0]
	case command
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
	when listProvidersPrompt
	       listProviders();	
	when deleteServicePrompt
		deleteService();
	when deleteProviderPrompt
		deleteProvider();
	when deleteAvailabilityPrompt
		deleteAvailability();
	when endCommand
		continueProgram = false	
	else
		puts ("ERROR: Incorrect input");
	end	
end
