require 'tty-prompt'
require './models/service'

class Service_Controller
  attr_accessor :services

  @services = [Service.new('Hair cut', 20, 1), Service.new('Massage', 50, 2)]

  def self.index
    @services.each do |service|
      puts "#{service.name} costs $#{service.price}, and takes about #{service.duration} hours."
    end
  end

  def self.add
    prompt = TTY::Prompt.new
    name = prompt.ask('Name:')
    price = prompt.ask('Price($):')
    duration = prompt.ask('Duration(hours):')
    service = Service.new(name, price, duration)
    @services << service
    puts "#{service.name} is successfully added."
  end

  def self.remove
    prompt = TTY::Prompt.new
    options = @services.map { |service| service.name}
    choice = prompt.select("Pick a service to delete", options)
    @services = @services.reject { |service| service.name == choice }
  end
end
