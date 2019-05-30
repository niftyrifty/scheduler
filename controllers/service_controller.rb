#TODO tty stuff

require 'tty-prompt'
require '../models/service'

class Service_Controller
  def add_service(name, price, duration_hours)
    Service.new(name, price, duration_hours)
  end
end