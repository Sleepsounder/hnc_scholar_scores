# frozen_string_literal: true

# Dir[File.dirname(__FILE__) + "/seeds/*.rb"].sort.each { |file| require file }

# %w[User].each do |model|
#   print "Seeding #{model.pluralize}..." unless Rails.env.test?
#   "#{model}Seeds".constantize.run
#   puts "done" unless Rails.env.test?
# end

# 10.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   User.create(
#     first_name: first_name,
#     last_name: last_name,
#     email: "#{first_name}.#{last_name}@email.com",
#     password: "@bc123",
#     password_confirmation: "@bc123")
# end

# 30.times do 
#   Applicant.create(
#     first_name: Faker::Hipster.word,
#     last_name: Faker::Name.last_name,
#     address: Faker::Address.full_address,
#     link: "https://www.hemophilia-nc.org/",
#     available: true,
#     reviews: 0
#   )
# end

