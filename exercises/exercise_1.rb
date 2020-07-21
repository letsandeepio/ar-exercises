# frozen_string_literal: true

require_relative '../setup'

puts 'Exercise 1'
puts '----------'

# Your code goes below here ...

Store.create(name: 'Burnaby', annual_revenue: 300_000, womens_apparel: true, mens_apparel: true)
Store.create(name: 'Richmond', annual_revenue: 1_260_000, womens_apparel: true, mens_apparel: false)
Store.create(name: 'Gastown', annual_revenue: 190_000, womens_apparel: false, mens_apparel: true)

puts "count #{Store.count}"
