require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whisler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

mens_stores = Store.where("mens_apparel = ? and womens_apparel = ?", true, false)
under_million = Store.where("womens_apparel = ? and annual_revenue < ?", true, 1000000)

mens_stores.each do |store|
  puts "#{store.name} sells only men clothing and has a annual revenue of #{store.annual_revenue}"
end

under_million.each do |store|
  puts "#{store.name} has an annual revenue of #{store.annual_revenue} and sells women clothing"
end

