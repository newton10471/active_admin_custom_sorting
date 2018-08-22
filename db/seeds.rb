# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'admin2@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'admin3@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
admin_user_id_1 = AdminUser.first.id
admin_user_id_2 = AdminUser.second.id
admin_user_id_3 = AdminUser.third.id
3.times { GoldStar.create!(admin_user_id: admin_user_id_1) }
1.times { GoldStar.create!(admin_user_id: admin_user_id_2) }
2.times { GoldStar.create!(admin_user_id: admin_user_id_3) }
