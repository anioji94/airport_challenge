class Airport
	attr_reader :current_capacity, :max_capacity

	def initialize(current_capacity = 5, max_capacity = 10)
		@max_capacity = max_capacity
		@current_capacity = current_capacity
	end

	def accept_land(plane)
		@current_capacity < @max_capacity ? "#{plane.name} has landed" : full_capacity
	end

	def take_off(plane)
		@current_capacity != 0 ? "#{plane.name} has taken off" : zero_capacity
	end

private

	def full_capacity
		"request denied. airport full"
	end

	def zero_capacity
		"request denied. airport empty"
	end
end