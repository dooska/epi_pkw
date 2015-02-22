# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Central", description: "Can read"})
r2 = Role.create({name: "Regional", description: "Can read and edit"})
 
u1 = User.create({name: "Central", email: "central@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({name: "Regional", email: "regional@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
