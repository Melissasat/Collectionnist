# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Shop.new
a.name = "Le Collectionist"
a.save
a.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 1)
a.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 2)
a.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 3)
a.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 4)
a.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 5)
a.opening_times.create(:morning_start => "10:30", :morning_end => "20:00", index: 6)
a.opening_times.create(index: 0)