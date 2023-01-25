require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...
@store2.employees.create(first_name: "Jhonny", last_name: "Rogers", hourly_rate: 90)
employee1 = @store2.employees.find_by(first_name: "Jhonny")
p "The password for #{employee1.first_name} is: #{employee1.password}"