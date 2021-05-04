class Airport
	attr_reader :current_capacity
	MAX_CAPACITY = 10

	def initialize(current_capacity = 0)
		@current_capacity = current_capacity
	end

	def accept_land(plane)
		@current_capacity < MAX_CAPACITY ? "#{plane.name} has landed" : "request denied. airport full"
	end

	def take_off(plane)
		"#{plane.name} has taken off"
	end

	def print_cap
		puts MAX_CAPACITY
	end
end