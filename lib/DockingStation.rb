require_relative 'Bike.rb'

class DockingStation

	attr_accessor :bikes, :capacity
	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
	  @bikes = []
	end

	def release_bike
		raise "There are no bikes in the dock" if empty?
		@bikes.pop
	end

	def dock(bike)
		raise "The dock is full" if full?
		@bikes << bike
		#@bikes_in_dock += 1
	end

	private

	def full?
		@bikes.length >= capacity
	end

	def empty?
		@bikes.empty?
	end

	# def view_dock
	# 	@bikes_in_dock
	# end
end
