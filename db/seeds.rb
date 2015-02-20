# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Central", description: "Can read items"})
r2 = Role.create({name: "Regional", description: "Can read and create items. Can update and destroy own items"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
 
u1 = User.create({name: "Central", email: "central@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({name: "Regional", email: "regional@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u3 = User.create({name: "Admin", email: "admin@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})
