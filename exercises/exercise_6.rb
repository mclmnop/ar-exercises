require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store4 = Store.find_by(id:4)
@store5 = Store.find_by(id:5)
@store6 = Store.find_by(id:6)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Simpson", last_name: "Mark", hourly_rate: 61)
@store1.employees.create(first_name: "Allard", last_name: "Jessica", hourly_rate: 62)
@store1.employees.create(first_name: "Bose", last_name: "Carol", hourly_rate: 63)
@store5.employees.create(first_name: "Watts", last_name: "Allan", hourly_rate: 50)
@store2.employees.create(first_name: "Rose", last_name: "Angelina", hourly_rate: 55)
@store2.employees.create(first_name: "Graham", last_name: "Jules", hourly_rate: 52)
@store4.employees.create(first_name: "Neil", last_name: "Julie", hourly_rate: 54)
@store4.employees.create(first_name: "Toupin", last_name: "Brett", hourly_rate: 55)
@store5.employees.create(first_name: "Groll",  last_name:"Paul", hourly_rate: 44)
