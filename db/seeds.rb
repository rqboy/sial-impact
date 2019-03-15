Activity.destroy_all
Initiative.destroy_all
User.destroy_all

user = User.create(email:"hz.iraqi@gmail.com", password: "sialimpact")

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552657537/hvze7e7uxi09nbvoefqd.jpg"
initiative2 = Initiative.new(name: "Thread", description: "Empowering women in agriculture", sector_activity: "Agriculture", budget: 100000, country: "Senegal")
initiative2.user = user
initiative2.remote_photo_url = url
initiative2.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552657502/mp333ikpwdeutpzqgcrf.jpg"
initiative1 = Initiative.new(name: "WAH", description: "Bringing clean water to rural communities", sector_activity: "Water", budget: 50000, country: "Cambodia")
initiative1.remote_photo_url = url
initiative1.user = user
initiative1.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552657702/rrshdowf0y24ckpnypjr.jpg"
initiative3 = Initiative.new(name: "LP4Y", description: "Helping young people find job opportunities", sector_activity: "Employment", budget: 200000, country: "Philippines")
initiative3.remote_photo_url = url
initiative3.user = user
initiative3.save

activity1 = Activity.create(title: "Organisation of midwives and pediatric trainings", objective: 11)
activity1.initiative = initiative1
activity1.save

activity2 = Activity.create(title: "Installation of clear water systems", objective: 14)
activity2.initiative = initiative1
activity2.save

activity3 = Activity.create(title: "Promotion of hygiene in public schools", objective: 17)
activity3.initiative = initiative1
activity3.save
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
