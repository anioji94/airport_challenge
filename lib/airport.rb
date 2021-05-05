require_relative('./plane.rb')
require_relative('./weather.rb')

class Airport
	attr_reader :current_capacity, :max_capacity, :weather

	def initialize(current_capacity = 5, max_capacity = 10, weather = Weather.new)
		@max_capacity = max_capacity
		@current_capacity = current_capacity
		@weather = weather
	end

	def accept_land(plane)
		@current_capacity < @max_capacity ? "#{plane.name} has landed" : full_capacity
	end

	def take_off(plane)
		weather_report
		@current_capacity != 0 ? "#{plane.name} has taken off" : zero_capacity
	end

private

	def weather_report
		raise "request denied. stormy weather" if @weather.report == 'stormy'
	end

	def stormy_weather
		raise "request denied. stormy weather"
	end

	def full_capacity
		raise "request denied. airport full"
	end

	def zero_capacity
		raise "request denied. airport empty"
	end
end