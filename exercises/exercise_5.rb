# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Your code goes here ...
puts "All store revenue: #{Store.sum(:annual_revenue)}"
puts "Stores average: #{Store.average(:annual_revenue)}"
puts "stores that are generating $1M or more in annual sales #{Store.where('annual_revenue >= 1000000').count}"
