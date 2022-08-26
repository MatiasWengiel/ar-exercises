require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum("annual_revenue")
@average_revenue = Store.sum("annual_revenue") / Store.count
@stores_with_revenue_over_1m = Store.where(annual_revenue: 1000000..).count
puts "Annual Revenue For All Stores: #{@total_revenue}"
puts "Average Revenue Per Store: #{@average_revenue}"
puts "Stores With A Revenue Over 1M: #{@stores_with_revenue_over_1m}"