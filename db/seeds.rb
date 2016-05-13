# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
	Person.create(first_name: Random.firstname,last_name: Random.lastname,email: Random.email ,job: "Developer",bio: Random.paragraphs(3) ,gender: "male", birthdate: Random.date(1000)-Random.new().rand(5000...10000), picture: "http://findicons.com/files/icons/1072/face_avatars/300/i05.png")
end

10.times do	
	Person.create(first_name: Random.firstname,last_name: Random.lastname,email: Random.email ,job: "Developer",bio: Random.paragraphs(3) ,gender: "female", birthdate: Random.date(1000)-Random.new().rand(5000...10000), picture: "https://upload.wikimedia.org/wikipedia/commons/0/07/Avatar_girl_face.png")
end-Random.new().rand(10000)