# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Movie.destroy_all


Xan = User.create(username: "Xan", password: "123", avatar: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Ham_%284%29.jpg/440px-Ham_%284%29.jpg")

HF = Movie.create(title: "Hot Fuzz", image: "url", description: "it's funny")