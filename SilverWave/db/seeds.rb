# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.create!(:email => 'logan@xmen.com', :password => 'genetics')
User.create!(:email => 'charles@xmen.com', :password => 'professorx')
User.create!(:email => 'hank@xmen.com', :password => 'thebeast')
User.create!(:email => 'jean@xmen.com', :password => 'darkphoenix')