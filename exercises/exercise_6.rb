require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Viriani", hourly_rate: 60)
@store1.employees.create(first_name: "Adam", last_name: "Smith", hourly_rate:1)
@store2.employees.create(first_name: "Bob", last_name: "James", hourly_rate: 2)
@store2.employees.create(first_name: "Carl", last_name: "Doe", hourly_rate: 3)

puts Employee.count