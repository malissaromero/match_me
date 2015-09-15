# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Personality.destroy_all
Message.destroy_all

Marc = User.create(facebook_id: 10, name: "Marc", location: "Alabama", photo_url: "http://placekitten.com.s3.amazonaws.com/homepage-samples/200/287.jpg")
Melissa = User.create(facebook_id: 20, name: "Melissa", location: "Maryland", photo_url: "http://placekitten.com.s3.amazonaws.com/homepage-samples/408/287.jpg")

Personality1 = Personality.create(personality_id: 20, traits_score: 98, types_score: 80, user_id: 1)
Personality2 = Personality.create(personality_id: 25, traits_score: 97, types_score: 85, user_id: 2)

Message1 = Message.create(sender: Marc, reciever: Melissa)
Message2 = Message.create(sender: Melissa,reciever: Marc)
