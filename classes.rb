class Service
    #Basic Initializor
    def initialize(name, price, duration_hours)
        @name = name
        @price = price
        @duration_hours = duration_hours
        @calendar = Array.new(365*24)   
    end
end

class Provider
    def initialize(name, phone_number)
        @name = name
        @phone_number = phone_number
        @list_of_services = Hash.new
        @list_of_availability = Array.new(365)
    end

    def getName()
	    @name
    end

    def getPhoneNumber()
	    @phone_number
    end

end

class Appointment
    def initialize(time, date, client, provider)
        @time = time
        @date = date
        @client = client
        @provider = provider
    end
end

class Client
	def initialize(name)
		@name = name
	end
end
