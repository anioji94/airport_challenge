require_relative('./plane.rb')
require_relative('./weather.rb')

class Airport
	attr_reader :current_capacity, :max_capacity

	def initialize(current_capacity = 5, max_capacity = 10)
		@max_capacity = max_capacity
		@current_capacity = current_capacity
	end

	def accept_land(plane)
		weather_report
		@current_capacity < @max_capacity ? "#{plane.name} has landed" : full_capacity
	end

	def take_off(plane)
		@current_capacity != 0 ? "#{plane.name} has taken off" : zero_capacity
	end

private

	def weather_report
		stormy_weather if weather_clear? == false
	end

	def weather_clear?(weather = Weather.new)
		return false
	end

	def stormy_weather
		"request denied. stormy weather"
	end

	def full_capacity
		"request denied. airport full"
	end

	def zero_capacity
		"request denied. airport empty"
	end
end