require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Give a name for a new store"
new_store = gets.chomp
puts "new_store #{new_store}"


@store10 = Store.create(name: new_store)
puts @store10.valid?
puts @store10.errors.messages[:name]
puts @store10.errors.messages[:annual_revenue]
puts @store10.errors.messages[:at_least_men_or_women]

