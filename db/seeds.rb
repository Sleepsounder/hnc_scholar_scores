# frozen_string_literal: true

# Dir[File.dirname(__FILE__) + "/seeds/*.rb"].sort.each { |file| require file }

# %w[User].each do |model|
#   print "Seeding #{model.pluralize}..." unless Rails.env.test?
#   "#{model}Seeds".constantize.run
#   puts "done" unless Rails.env.test?
# end

# 5.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Color.color_name.capitalize
#   User.create(
#     first_name: first_name,
#     last_name: last_name,
#     email: "#{first_name}.#{last_name}@email.com",
#     password: "@bc123",
#     password_confirmation: "@bc123"
# )
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

Applicant.create(
  first_name: "Juliana",
  middle_initial: "K",
  last_name: "Baker",
  address: "162 Azalea Ln",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Baker_J",
  city: "Franklin",
  state: "TN",
  zip_code: "37069",
  application_received: "2019-11-15"
)

Applicant.create(
  first_name: "Matthew",
  middle_initial: "",
  last_name: "Bayer",
  address: "746 Cypress Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Bayer_M",
  city: "Warminster",
  state: "PA",
  zip_code: "18974",
  application_received: "2020-01-29"
)

Applicant.create(
  first_name: "Aiden",
  middle_initial: "X",
  last_name: "Peterkin",
  address: "5414 Joan St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Peterkin_A",
  city: "Zachary",
  state: "LA",
  zip_code: "70791",
  application_received: "2020-01-29"
)

Applicant.create(
  first_name: "James",
  middle_initial: "R",
  last_name: "Kilts",
  address: "4310 Jameson St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Kilts_J",
  city: "Saginaw",
  state: "MI",
  zip_code: "48638",
  application_received: "2020-02-09"
)

Applicant.create(
  first_name: "Cedric",
  middle_initial: "T",
  last_name: "Jordan",
  address: "2235 Theo Arthur Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Jordan_C",
  city: "Effingham",
  state: "SC",
  zip_code: "29541",
  application_received: "2020-02-25"
)

Applicant.create(
  first_name: "Luke",
  middle_initial: "A",
  last_name: "McCann",
  address: "1504 Inventors Ct",
  link: "https://www.hemophilia-nc.org/xyzzy-20/McCann_L",
  city: "Fort Myers",
  state: "FL",
  zip_code: "33901",
  application_received: "2020-03-05"
)

Applicant.create(
  first_name: "Bennett",
  middle_initial: "M",
  last_name: "Barnes",
  address: "124 Golden Heather Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Barnes_B",
  city: "Chapel Hill",
  state: "NC",
  zip_code: "27517",
  application_received: "2020-03-12"
)

Applicant.create(
  first_name: "Seth",
  middle_initial: "L",
  last_name: "Patsakos",
  address: "261 Kissel Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Patsakos_S",
  city: "Staten Island",
  state: "NY",
  zip_code: "10310",
  application_received: "2020-03-18"
)

Applicant.create(
  first_name: "Laura",
  middle_initial: "L",
  last_name: "Van Aken",
  address: "183 Lindorf St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Van Aken_L",
  city: "Ulster Park",
  state: "NY",
  zip_code: "12487",
  application_received: "2020-03-23"
)

Applicant.create(
  first_name: "Kolbe",
  middle_initial: "L",
  last_name: "Madden",
  address: "510 Poplar St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Madden_K",
  city: "Wamego",
  state: "KS",
  zip_code: "66547",
  application_received: "2020-03-24"
)

Applicant.create(
  first_name: "MacKenna",
  middle_initial: "E",
  last_name: "Hatfield",
  address: "2800 Sylvan Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Hatfield_M",
  city: "Wooster",
  state: "OH",
  zip_code: "44691",
  application_received: "2020-03-27"
)

Applicant.create(
  first_name: "Grace",
  middle_initial: "",
  last_name: "Miller",
  address: "17630 Almy Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Miller_G",
  city: "Howard City",
  state: "MI",
  zip_code: "49329",
  application_received: "2020-03-27"
)

Applicant.create(
  first_name: "Timothy",
  middle_initial: "R",
  last_name: "Wohl",
  address: "155 E S Boundary St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Wohl_T",
  city: "Perrysburg",
  state: "OH",
  zip_code: "43551",
  application_received: "2020-04-01"
)

Applicant.create(
  first_name: "Johan",
  middle_initial: "",
  last_name: "Diaz",
  address: "331 Carriage Dr, Unit C",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Diaz_J",
  city: "Santa Ana",
  state: "CA",
  zip_code: "92707",
  application_received: "2020-04-05"
)

Applicant.create(
  first_name: "Austin",
  middle_initial: "W",
  last_name: "Ford",
  address: "3808 Brookfield Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Ford_A",
  city: "Champaign",
  state: "IL",
  zip_code: "61822",
  application_received: "2020-04-06"
)

Applicant.create(
  first_name: "Avery",
  middle_initial: "N",
  last_name: "Amende",
  address: "920 Doane Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Amende_A",
  city: "Bozeman",
  state: "MT",
  zip_code: "59718",
  application_received: "2020-04-14"
)

Applicant.create(
  first_name: "Rylee",
  middle_initial: "J",
  last_name: "Knepper",
  address: "13148 Delaware Cir",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Knepper_R",
  city: "Waynesboro",
  state: "PA",
  zip_code: "17268",
  application_received: "2020-04-14"
)

Applicant.create(
  first_name: "Yan",
  middle_initial: "D",
  last_name: "Ostanin",
  address: "3019 W 107th Pl, Unit B",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Ostanin_Y",
  city: "West Minster",
  state: "CO",
  zip_code: "80031",
  application_received: "2020-04-14"
)

Applicant.create(
  first_name: "Austyn",
  middle_initial: "L",
  last_name: "Clark",
  address: "2794 NW Windham Loop",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Clark_A",
  city: "Bend",
  state: "OR",
  zip_code: "97703",
  application_received: "2020-04-15"
)

Applicant.create(
  first_name: "Rebekkah",
  middle_initial: "A",
  last_name: "Bertelsen",
  address: "448 N 550 E",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Bertelsen_R",
  city: "Springville",
  state: "UT",
  zip_code: "84663",
  application_received: "2020-04-16"
)

Applicant.create(
  first_name: "Anmol",
  middle_initial: "",
  last_name: "Saini",
  address: "1041 Wind Pointe Way",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Saini_A",
  city: "Englewood",
  state: "OH",
  zip_code: "45322",
  application_received: "2020-04-17"
)
