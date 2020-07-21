# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

@store1 = Store.first

@store1.employees.create(first_name: 'Sandeep', last_name: 'Chopra', hourly_rate: 100)

puts Employee.last
