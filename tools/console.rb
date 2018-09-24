require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

class1 = "vintage"
class2 = "hypercar"
class3 = "bicycle"

o1 = CarOwner.new("Bob")
o2 = CarOwner.new("Bill")
o3 = CarOwner.new("Brian")

m1 = Mechanic.new("Richie", class1)
m2 = Mechanic.new("Carrie", class1)
m3 = Mechanic.new("Tonathon", class2)
m4 = Mechanic.new("Hardwon", class3)

c1 = Car.new("make1", "model1", class1, o1, m1)
c2 = Car.new("make2", "model2", class2, o1, m3)
c3 = Car.new("make3", "model3", class1, o2, m2)
c4 = Car.new("make4", "model4", class3, o3, m4)
c5 = Car.new("make4", "model4", class3, o3, m4)




binding.pry
0