require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner


sales = Role.new("sales")
checkout = Role.new("checkout")
customer_support = Role.new("customer support")
technician = Role.new("technician")

sam = Manager.new("Sam", "shoes", 28)
max = Manager.new("Max", "outerwear", 35)
beth = Manager.new("Beth", "technicians", 38)
doug = Manager.new("Doug", "general", 40)

nicole = Employee.new("Nicole", 20, sam, sales)
james = Employee.new("James", 15, max, checkout)
sara = Employee.new("Sara", 18, doug, customer_support)
robert = Employee.new("Robert", 23, beth, technician)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line