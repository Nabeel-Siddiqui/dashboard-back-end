# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Preference.destroy_all
Note.destroy_all

# User.create(first_name:, last_name:, username:, password:, photo:)
# Preference.create()
# Note.create(title:, text_content:, create_date:, update_date:, user:)

u1 = User.create(first_name: "Nabeel", last_name: "Siddiqui", username: "NSid", password: "123ABC")
u2 = User.create(first_name: "John", last_name: "Doe", username: "JoDoe", password: "456DEF")
u3 = User.create(first_name: "Jane", last_name: "Doe", username: "JaDoe", password: "789GHI")

p1 = Preference.create(reddit:false, news:false, stocks:false, weather:false, spotify:false, calender:false, twitter:false, sleepCycle:false, notes:true, user:u1) 

p2 = Preference.create(reddit:true, news:false, stocks:true, weather:true, spotify:true, calender:true, twitter:true, sleepCycle:false, notes:true, user:u2)

p3 = Preference.create(reddit:false, news:true, stocks:false, weather:true, spotify:true, calender:false, twitter:false, sleepCycle:true, notes:true, user:u3)


n1 = Note.create(title: "random", text_content: "This is a random note, it has no value. In fact, if this note had never existed then it would be worth more than what it is now.", create_date: "12-12-2019", user: u1)

n2 = Note.create(title: "Ode to Cold Brew", text_content:"When the clock strikes two, the man crosses the river, he returns sometime later and realizes he’s been forgotten. Now he lives a dreary life, disarrayed and distraught, disillusioned by what he’s become. He’ll continue to walk this path down the road he’s paved, hoping to return to the life he once knew, to even dream it would be reassuring, to see it would be grand, to taste would be enchanting. He’ll cross over again. Day in and day out. For the fountain of merriment lies between four and eight.", create_date: "1-16-20", update_date: "1-17-20", user:u2)

n3 = Note.create(title: "shopping list", text_content: ["eggs x2", "cheese", "milk", "oatmeal", "rice", "chicken breast"], create_date: "2-1-20", update_date: "2-2-20", user: u3)


