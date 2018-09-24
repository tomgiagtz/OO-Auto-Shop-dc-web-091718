class CarOwner

	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def cars
		cars = Car.all.select { |car| car.owner == self }
	end

	def mechanics
		cars.collect { |car| car.mechanic }.uniq
	end

	def self.average_cars_owned
		Car.all.size / CarOwner.all.size.to_f
	end
end
