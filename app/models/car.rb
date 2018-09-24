class Car

  	attr_reader :make, :model, :classification, :mechanic, :owner

  	@@all = []

  	def initialize(make, model, classification, owner, mechanic)
	    @make = make
	    @model = model
	    @classification = classification
	    @owner = owner
	    @mechanic = mechanic
	    @@all << self
  	end

  	def self.all
		@@all
	end

	def self.classifications
		classes = self.all.collect{|car| car.classification}
		classes.uniq
	end

	def get_mechanics
		Mechanic.all.select { |mechanic| mechanic.specialty == self.classification }
	end
end
