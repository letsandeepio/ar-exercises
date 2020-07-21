# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...

@store1 = Store.first

@store1.employees.create(first_name: 'Sandeep', last_name: 'Chopra', hourly_rate: 100)
@store1.employees.create(first_name: 'Nidhi', last_name: 'Chopra', hourly_rate: 95)
@store1.employees.create(first_name: 'Sophie', last_name: 'Chopra', hourly_rate: 45)

@store2 = Store.last

@store2.employees.create(first_name: 'Dolly', last_name: 'Chopra', hourly_rate: 100)
@store2.employees.create(first_name: 'Subham', last_name: 'Chopra', hourly_rate: 90)
