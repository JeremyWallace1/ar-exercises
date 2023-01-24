require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Exercise 5: Calculations
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
@total_revenue = Store.sum(:annual_revenue)
puts "Total revenue (all stores) is #{@total_revenue}"
# On the next line, also output the average annual revenue for all stores.
@average_revenue = @total_revenue / Store.count
puts "Average revenue (all stores) is #{@average_revenue}"
# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
@number_of_high_revenue_stores = Store.where("annual_revenue >= ?", 1000000).count
puts "Number of stores with annual revenue >= $1,000,00 is #{@number_of_high_revenue_stores}"