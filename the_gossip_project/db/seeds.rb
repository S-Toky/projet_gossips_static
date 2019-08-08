# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
City.destroy_all
User.destroy_all
Gossip.destroy_all
PrivateMessage.destroy_all
JoinTableTagGossip.destroy_all

cit = []
us = []
tag = []
gos = []

10.times do |i| 
	cit << City.create!(name: Faker::Address.zip,
		zip_code: Faker::Address.zip_code
		)
end


10.times do |i|
	us << User.create!(first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		description: Faker::Movie.quote,
		email: Faker::Internet.email,
		age: Faker::Number.between(from: 20, to: 40),
		city_id: cit[rand(9)].id
		)
end

20.times do |i|
	gos << Gossip.create!(title: Faker::Games::WorldOfWarcraft.hero,
		content: Faker::Movie.quote,
		user_id: us[rand(1..9)].id
		)
end

10.times do |i|
	PrivateMessage.create!(
		content: Faker::Quotes::Shakespeare.hamlet_quote,
		recipient_id: us[rand(10)].id,
		sender_id: us[rand(10)].id
		)
end

10.times do |i|
	tag << Tag.create!(title: Faker::JapaneseMedia::DragonBall.character)
end

10.times do |i|
	JoinTableTagGossip.create!(
		tag_id: tag[rand(10)].id,
		gossip_id: gos[rand(20)].id)
end