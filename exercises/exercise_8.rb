# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 8'
puts '----------'

@store1 = Store.first

@employee1 = @store1.employees.create(first_name: 'Sandeep', last_name: 'Chopra', hourly_rate: 100)

p @employee1.password
