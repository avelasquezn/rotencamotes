# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
require 'faker'


def member_of
  (rand(100) < 10) ? User::ROLES[:experts] : User::ROLES[:community]
end


100.times do
  user = User.create :first_name             => Faker::Name.first_name,
              :last_name              => Faker::Name.last_name,
              :email                  => Faker::Internet.free_email,
              :password               => '123456',
              :password_confirmation  => '123456',
              :member_of              => member_of
  puts user.errors.full_messages
  puts "Creado usuario #{user.full_name}"

  if user.expert?
    puts "Usuario Experto"
    blog = user.create_blog(:name => 'blog of '+ user.last_name, :active => true)
    puts "Creado blog #{blog.name}"
    rand(3).times do
      post = user.build_post
      post.title = Faker::Lorem.sentence
      post.content = Faker::Lorem.paragraphs(rand(5))
      post.save
      puts "Creado post #{post.title}"
    end
  end
end

