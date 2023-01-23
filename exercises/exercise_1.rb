require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
### Exercise 1: Create 3 stores ###
# Use Active Record's create class method multiple times to create 3 stores in the database:
#--> Burnaby (annual_revenue of 300000, carries men's and women's apparel)
burnaby = Store.new
burnaby.name = "Burnaby"
burnaby.annual_revenue = 300000
burnaby.mens_apparel = true
burnaby.womens_apparel = true
burnaby.save

#--> Richmond (annual_revenue of 1260000 carries women's apparel only)
richmond = Store.new
richmond.name = "Richmond"
richmond.annual_revenue = 1260000
richmond.mens_apparel = false
richmond.womens_apparel = true
richmond.save

#--> Gastown (annual_revenue of 190000 carries men's apparel only)
gastown = Store.new
gastown.name = "Gastown"
gastown.annual_revenue = 190000
gastown.mens_apparel = true
gastown.womens_apparel = false
gastown.save

# Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.
puts Store.count
