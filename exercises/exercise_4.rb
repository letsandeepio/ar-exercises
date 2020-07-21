# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts 'Exercise 4'
puts '----------'

# Your code goes here
Store.create(name: 'Surrey', annual_revenue: 224_000, womens_apparel: true, mens_apparel: false)
Store.create(name: 'Whistler', annual_revenue: 1_900_000, womens_apparel: false, mens_apparel: true)
Store.create(name: 'Yaletown', annual_revenue: 430_000, womens_apparel: true, mens_apparel: true)

store1 = Store.where(womens_apparel: true)

store1.each do |store|
  puts "#{store.name} & #{store.annual_revenue}"
end

store2 = Store.where('womens_apparel = true AND annual_revenue > 1000000')

store2.each do |store|
  puts "#{store.name} & #{store.annual_revenue}"
end
