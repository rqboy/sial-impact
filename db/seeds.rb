Activity.destroy_all
Initiative.destroy_all
User.destroy_all

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552905627/Sachafin.webp"
user_ent = User.create(email:"hz.iraqi@gmail.com", password: "sialimpact", role: "entrepreneur")
user_ent.remote_photo_url = url
user_ent.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552902749/gestionnaire.jpg"
user_ges = User.create(email:"hamza.iraqi@hec.edu", password: "sialimpact", role: "gestionnaire")
user_ges.remote_photo_url = url
user_ges.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552657537/hvze7e7uxi09nbvoefqd.jpg"
initiative2 = Initiative.new(name: "Thread", description: "Empowering women in agriculture", sector_activity: "Agriculture", budget: 100000, country: "Senegal")
initiative2.user = user_ges
initiative2.referent_id = user_ges.id
initiative2.remote_photo_url = url
initiative2.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552657502/mp333ikpwdeutpzqgcrf.jpg"
initiative1 = Initiative.new(name: "WAH", description: "Bringing clean water to rural communities", sector_activity: "Water", budget: 50000, country: "Cambodia")
initiative1.remote_photo_url = url
initiative1.user = user_ges
initiative1.referent_id = user_ent.id
initiative1.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552664737/ndj58z7ujars8emfhmfq.jpg"
initiative3 = Initiative.new(name: "LP4Y", description: "Helping young people find job opportunities", sector_activity: "Employment", budget: 200000, country: "Philippines")
initiative3.remote_photo_url = url
initiative3.referent_id = user_ges.id
initiative3.user = user_ges
initiative3.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552904933/1001F.jpg"
initiative4 = Initiative.new(name: "1001 Fontaines", description: "Bringing clean water to schools", sector_activity: "Water", budget: 250000, country: "Madagascar")
initiative4.remote_photo_url = url
initiative4.referent_id = user_ges.id
initiative4.user = user_ges
initiative4.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552904933/drishtee.jpg"
initiative5 = Initiative.new(name: "Drishtee", description: "Provides information technology to rural kiosks", sector_activity: "Technology", budget: 300000, country: "India")
initiative5.remote_photo_url = url
initiative5.referent_id = user_ges.id
initiative5.user = user_ges
initiative5.save

url = "https://res.cloudinary.com/dxj84taty/image/upload/v1552904933/ldb.webp"
initiative6 = Initiative.new(name: "Laiteries du Berger", description: "Yaourt distribution", sector_activity: "Food", budget: 150000, country: "Senegal")
initiative6.referent_id = user_ges.id
initiative6.remote_photo_url = url
initiative6.user = user_ges
initiative6.save

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
