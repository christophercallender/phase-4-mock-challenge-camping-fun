puts "🏕 Seeding campers..."
camper1 = Camper.create(name: "Caitlin", age: 8)
camper2 = Camper.create(name: "Lizzie", age: 9)
camper3 = Camper.create(name: "Tom", age: 10)
camper4 = Camper.create(name: "Morgan", age: 11)
camper5 = Camper.create(name: "Danny", age: 12)
camper6 = Camper.create(name: "Peter", age: 13)
camper7 = Camper.create(name: "Amanda", age: 14)
camper8 = Camper.create(name: "Nick", age: 15)

puts "🏕 Seeding activities..."
activity1 = Activity.create(name: "Archery", difficulty: 1)
activity2 = Activity.create(name: "Swimming", difficulty: 2)
activity3 = Activity.create(name: "Photography", difficulty: 3)
activity4 = Activity.create(name: "Arts & Crafts", difficulty: 4)
activity5 = Activity.create(name: "Kayaking", difficulty: 5)
activity6 = Activity.create(name: "Fencing", difficulty: 6)
activity7 = Activity.create(name: "Canoeing", difficulty: 7)
activity8 = Activity.create(name: "Windsurfing", difficulty: 8)

puts "🏕 Seeding signups..."
Signup.create(camper_id: camper1.id, activity_id: activity1.id, time: 11)
Signup.create(camper_id: camper2.id, activity_id: activity2.id, time: 12)
Signup.create(camper_id: camper3.id, activity_id: activity3.id, time: 13)
Signup.create(camper_id: camper4.id, activity_id: activity4.id, time: 14)
Signup.create(camper_id: camper5.id, activity_id: activity5.id, time: 15)
Signup.create(camper_id: camper6.id, activity_id: activity6.id, time: 16)
Signup.create(camper_id: camper7.id, activity_id: activity7.id, time: 17)
Signup.create(camper_id: camper8.id, activity_id: activity8.id, time: 18)

puts "✅ Done seeding!"
