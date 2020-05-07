# frozen_string_literal: true

# Dir[File.dirname(__FILE__) + "/seeds/*.rb"].sort.each { |file| require file }

# %w[User].each do |model|
#   print "Seeding #{model.pluralize}..." unless Rails.env.test?
#   "#{model}Seeds".constantize.run
#   puts "done" unless Rails.env.test?
# end

5.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Color.color_name.capitalize
  User.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name}.#{last_name}@email.com",
    password: "@bc123",
    password_confirmation: "@bc123"
)
end

# 10.times do
#   Applicant.create(
#     first_name: Faker::Science.element,
#     last_name: Faker::Name.last_name,
#     address: Faker::Address.full_address,
#     link: "https://www.hemophilia-nc.org/"
#   )
# end

if Rails.env.development?
  AdminUser.create!(
    first_name: "Geoff",
    last_name: "Register",
    email: "a@b.com",
    password: "@bc123",
    password_confirmation: "@bc123"
  )
end


# examples to create
Applicant.create(
  first_name: "",
  middle_initial: "",
  last_name: "",
  address: "",
  city: "",
  state: "",
  zip_code: "",
  link: "",
  application_received: date
)





array_of_hashes = [
  {
    first_name: "",
    middle_initial: "",
    last_name: "",
    address: "",
    city: "",
    state: "",
    zip_code: "",
    link: "",
    application_received: date
  },
    first_name: "",
    middle_initial: "",
    last_name: "",
    address: "",
    city: "",
    state: "",
    zip_code: "",
    link: "",
    application_received: date
  },
  {
    first_name: "",
    middle_initial: "",
    last_name: "",
    address: "",
    city: "",
    state: "",
    zip_code: "",
    link: "",
    application_received: date
  },
    first_name: "",
    middle_initial: "",
    last_name: "",
    address: "",
    city: "",
    state: "",
    zip_code: "",
    link: "",
    application_received: date
  }
]
