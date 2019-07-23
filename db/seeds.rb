# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "Blog post No. #{blog + 1}",
    body:  Faker::Lorem.paragraph(2, false, 8)
  )
end

puts '10 Blogs created!'

5.times do |skill|
  Skill.create!(
    title:   "Skill No. #{skill + 1}",
    percent: 15
  )
end

puts '10 Skills created!'

9.times do |portfolio|
  Portfolio.create!(
    title:       "Portfolio No. #{portfolio + 1}",
    subtitle:    Faker::Lorem.paragraph(1, false, 1),
    body:        Faker::Lorem.paragraph(2, false, 5),
    thumb_image: Faker::LoremPixel.image('350x200'),
    main_image:  Faker::LoremPixel.image('600x400')
  )
end

puts '10 Portfolio Items created!'
