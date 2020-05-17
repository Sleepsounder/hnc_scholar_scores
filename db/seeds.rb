# frozen_string_literal: true

# Dir[File.dirname(__FILE__) + "/seeds/*.rb"].sort.each { |file| require file }

# %w[User].each do |model|
#   print "Seeding #{model.pluralize}..." unless Rails.env.test?
#   "#{model}Seeds".constantize.run
#   puts "done" unless Rails.env.test?
# end

# ------------- Admin Users --------------

AdminUser.create!(
  first_name: "Charles",
  last_name: "Register",
  email: ENV["CR_ADMIN_EMAIL"],
  password: ENV["CR_PASSWORD"],
  password_confirmation: ENV["CR_PASSWORD"]
)

AdminUser.create!(
  first_name: "Geoff",
  last_name: "Register",
  email: ENV["GR_EMAIL"],
  password: ENV["GR_PASSWORD"],
  password_confirmation: ENV["GR_PASSWORD"]
)

# ------------- Readers ---------------

User.create!(
  first_name: "Marvin",
  last_name: "Pipkin",
  email: ENV["MP_EMAIL"],
  password: ENV["MP_PASSWORD"],
  password_confirmation: ENV["MP_PASSWORD"]
)

User.create!(
  first_name: "Amy",
  last_name: "Shair",
  email: ENV["AS_EMAIL"],
  password: ENV["AS_PASSWORD"],
  password_confirmation: ENV["AS_PASSWORD"]
)

User.create!(
  first_name: "Phil",
  last_name: "Poovey",
  email: ENV["PP_EMAIL"],
  password: ENV["PP_PASSWORD"],
  password_confirmation: ENV["PP_PASSWORD"]
)

User.create!(
  first_name: "Lenore",
  last_name: "Guidoni",
  email: ENV["LG_EMAIL"],
  password: ENV["LG_PASSWORD"],
  password_confirmation: ENV["LG_PASSWORD"]
)

User.create!(
  first_name: "Linda",
  last_name: "Kurtz",
  email: ENV["LK_EMAIL"],
  password: ENV["LK_PASSWORD"],
  password_confirmation: ENV["LK_PASSWORD"]
)

User.create!(
  first_name: "Allen",
  last_name: "Kurtz",
  email: ENV["AK_EMAIL"],
  password: ENV["AK_PASSWORD"],
  password_confirmation: ENV["AK_PASSWORD"]
)

User.create!(
  first_name: "Kathy",
  last_name: "Register",
  email: ENV["KR_EMAIL"],
  password: ENV["KR_PASSWORD"],
  password_confirmation: ENV["KR_PASSWORD"]
)

User.create!(
  first_name: "Charlie",
  last_name: "Register",
  email: ENV["CR_EMAIL"],
  password: ENV["CR_PASSWORD"],
  password_confirmation: ENV["CR_PASSWORD"]
)

User.create!(
  first_name: "Steve",
  last_name: "Peretti",
  email: ENV["SP_EMAIL"],
  password: ENV["SP_PASSWORD"],
  password_confirmation: ENV["SP_PASSWORD"]
)

# ---------------- Applicants -------------------

Applicant.create(
  first_name: "Ahmed",
  middle_initial: "TJ",
  last_name: "AlBadri",
  address: "5148 Elder Ave, Apt 6",
  link: "https://www.hemophilia-nc.org/xyzzy-20/AlBadri_A.pdf",
  city: "Charlotte",
  state: "NC",
  zip_code: "28205",
  application_received: "2020-04-29"
)

Applicant.create(
  first_name: "Avery",
  middle_initial: "N",
  last_name: "Amende",
  address: "920 Doane Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Amende_A.pdf",
  city: "Bozeman",
  state: "MT",
  zip_code: "59718",
  application_received: "2020-04-14"
)

Applicant.create(
  first_name: "Stanley",
  middle_initial: "S",
  last_name: "Anderson",
  address: "555 E 2500 S",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Anderson_S.pdf",
  city: "Vernal",
  state: "UT",
  zip_code: "84078",
  application_received: "2020-04-30"
)

Applicant.create(
  first_name: "Juliana",
  middle_initial: "K",
  last_name: "Baker",
  address: "162 Azalea Ln",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Baker_J.pdf",
  city: "Franklin",
  state: "TN",
  zip_code: "37069",
  application_received: "2019-11-15"
)

Applicant.create(
  first_name: "Bennett",
  middle_initial: "M",
  last_name: "Barnes",
  address: "124 Golden Heather Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Barnes_B.pdf",
  city: "Chapel Hill",
  state: "NC",
  zip_code: "27517",
  application_received: "2020-03-12"
)

Applicant.create(
  first_name: "Rayden",
  middle_initial: "ML",
  last_name: "Bartlett",
  address: "8103 NW 101st Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Bartlett_R.pdf",
  city: "Tamarac",
  state: "FL",
  zip_code: "33321",
  application_received: "2020-04-25"
)

Applicant.create(
  first_name: "Gavin",
  middle_initial: "M",
  last_name: "Bateman",
  address: "1917 Lizard Lick Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Bateman_G.pdf",
  city: "Zebulon",
  state: "NC",
  zip_code: "27597",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Matthew",
  middle_initial: "",
  last_name: "Bayer",
  address: "746 Cypress Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Bayer_M.pdf",
  city: "Warminster",
  state: "PA",
  zip_code: "18974",
  application_received: "2020-01-29"
)

Applicant.create(
  first_name: "Rebekkah",
  middle_initial: "A",
  last_name: "Bertelsen",
  address: "448 N 550 E",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Bertelsen_R.pdf",
  city: "Springville",
  state: "UT",
  zip_code: "84663",
  application_received: "2020-04-16"
)

Applicant.create(
  first_name: "Theo",
  middle_initial: "O",
  last_name: "Bockhorst",
  address: "1216 Buck Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Bockhorst_T.pdf",
  city: "Richmond Heights",
  state: "MO",
  zip_code: "63117",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Kealy",
  middle_initial: "C",
  last_name: "Boyd",
  address: "PO Box 525",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Boyd_K.pdf",
  city: "Gleneden Beach",
  state: "OR",
  zip_code: "97388",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Kendra",
  middle_initial: "C",
  last_name: "Brewer",
  address: "1121 Riviera Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Brewer_K.pdf",
  city: "Virginia Beach",
  state: "VA",
  zip_code: "23464",
  application_received: "2020-04-30"
)

Applicant.create(
  first_name: "Jack",
  middle_initial: "F",
  last_name: "Brogan",
  address: "5111 Willowbend Blvd.",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Brogan_J.pdf",
  city: "Houston",
  state: "TX",
  zip_code: "77035",
  application_received: "2020-05-09"
)

Applicant.create(
  first_name: "Austyn",
  middle_initial: "L",
  last_name: "Clark",
  address: "2794 NW Windham Loop",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Clark_A.pdf",
  city: "Bend",
  state: "OR",
  zip_code: "97703",
  application_received: "2020-04-15"
)

Applicant.create(
  first_name: "Kyle",
  middle_initial: "J",
  last_name: "Compton",
  address: "21827 Red Ashberry Trl",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Compton_K.pdf",
  city: "Cypress",
  state: "TX",
  zip_code: "77433",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Johan",
  middle_initial: "",
  last_name: "Diaz",
  address: "331 Carriage Dr, Unit C",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Diaz_J.pdf",
  city: "Santa Ana",
  state: "CA",
  zip_code: "92707",
  application_received: "2020-04-05"
)

Applicant.create(
  first_name: "Morgan",
  middle_initial: "P",
  last_name: "Dirkx",
  address: "5600 Orchard Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Dirkx_M.pdf",
  city: "West Des Moines",
  state: "IA",
  zip_code: "50266",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Mykel",
  middle_initial: "M",
  last_name: "Dolinski",
  address: "4168 Brouseville Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Dolinski_M.pdf",
  city: "Lincoln Park",
  state: "MI",
  zip_code: "48146",
  application_received: "2020-04-30"
)

Applicant.create(
  first_name: "Brian",
  middle_initial: "J",
  last_name: "Duval",
  address: "1565 Rhode Island Ave N",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Duval_B.pdf",
  city: "Minneapolis",
  state: "MN",
  zip_code: "55427",
  application_received: "2020-04-24"
)

Applicant.create(
  first_name: "Zachary",
  middle_initial: "D",
  last_name: "Early",
  address: "4645 W. 129th Ter.",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Early_Z.pdf",
  city: "Leawood",
  state: "KS",
  zip_code: "66209",
  application_received: "2020-05-09"
)

Applicant.create(
  first_name: "Austin",
  middle_initial: "W",
  last_name: "Ford",
  address: "3808 Brookfield Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Ford_A.pdf",
  city: "Champaign",
  state: "IL",
  zip_code: "61822",
  application_received: "2020-04-06"
)

Applicant.create(
  first_name: "Cole",
  middle_initial: "J",
  last_name: "Ford",
  address: "14708 Pomegranate Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Ford_C.pdf",
  city: "Bakersfield",
  state: "CA",
  zip_code: "93314",
  application_received: "2020-04-28"
)

Applicant.create(
  first_name: "Eli",
  middle_initial: "P",
  last_name: "Ford",
  address: "14708 Pomegranate Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Ford_E.pdf",
  city: "Bakersfield",
  state: "CA",
  zip_code: "93314",
  application_received: "2020-04-28"
)

Applicant.create(
  first_name: "Abigail",
  middle_initial: "R",
  last_name: "Graef",
  address: "2363 Vicksburg Ct SE",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Graef_A.pdf",
  city: "Kentwood",
  state: "MI",
  zip_code: "49508",
  application_received: "2020-05-04"
)

Applicant.create(
  first_name: "MacKenna",
  middle_initial: "E",
  last_name: "Hatfield",
  address: "2800 Sylvan Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Hatfield_M.pdf",
  city: "Wooster",
  state: "OH",
  zip_code: "44691",
  application_received: "2020-03-27"
)

Applicant.create(
  first_name: "Jordan",
  middle_initial: "E",
  last_name: "Hinz",
  address: "4499 Rolling Meadows",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Hinz_J.pdf",
  city: "Ellicott City",
  state: "MD",
  zip_code: "21043",
  application_received: "2020-05-05"
)

Applicant.create(
  first_name: "Ashley",
  middle_initial: "M",
  last_name: "Holland",
  address: "3860 Acadia Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Holland_A.pdf",
  city: "Hudsonville",
  state: "MI",
  zip_code: "49426",
  application_received: "2020-04-30"
)

Applicant.create(
  first_name: "Olivia",
  middle_initial: "L",
  last_name: "Huff",
  address: "657 Soundview Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Huff_O.pdf",
  city: "Palm Harbor",
  state: "FL",
  zip_code: "34683",
  application_received: "2020-04-27"
)

Applicant.create(
  first_name: "Kashish",
  middle_initial: "V",
  last_name: "Jain",
  address: "23 Hickory Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Jain_K.pdf",
  city: "Shrewsbury",
  state: "MA",
  zip_code: "869",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Cedric",
  middle_initial: "T",
  last_name: "Jordan",
  address: "2235 Theo Arthur Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Jordan_C.pdf",
  city: "Effingham",
  state: "SC",
  zip_code: "29541",
  application_received: "2020-02-25"
)

Applicant.create(
  first_name: "Mihir",
  middle_initial: "S",
  last_name: "Joshi",
  address: "1515A Lincoln Way",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Joshi_M.pdf",
  city: "San Francisco",
  state: "CA",
  zip_code: "94122",
  application_received: "2020-04-30"
)

Applicant.create(
  first_name: "James",
  middle_initial: "R",
  last_name: "Kilts",
  address: "4310 Jameson St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Kilts_J.pdf",
  city: "Saginaw",
  state: "MI",
  zip_code: "48638",
  application_received: "2020-02-09"
)

Applicant.create(
  first_name: "Bobby",
  middle_initial: "",
  last_name: "King",
  address: "906 W Mishawaka Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/King_B.pdf",
  city: "Mishawaka",
  state: "IN",
  zip_code: "46545",
  application_received: "2020-04-28"
)

Applicant.create(
  first_name: "Tanner",
  middle_initial: "J",
  last_name: "King",
  address: "5721 Wrenwyck Pl",
  link: "https://www.hemophilia-nc.org/xyzzy-20/King_T.pdf",
  city: "St Charles",
  state: "MO",
  zip_code: "63304",
  application_received: "2020-05-02"
)

Applicant.create(
  first_name: "Rylee",
  middle_initial: "J",
  last_name: "Knepper",
  address: "13148 Delaware Cir",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Knepper_R.pdf",
  city: "Waynesboro",
  state: "PA",
  zip_code: "17268",
  application_received: "2020-04-14"
)

Applicant.create(
  first_name: "Dhanush",
  middle_initial: "S",
  last_name: "Kotumraju",
  address: "9 Gilbert Lane",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Kotumraju_D.pdf",
  city: "South Windsor",
  state: "CT",
  zip_code: "3132",
  application_received: "2020-05-09"
)

Applicant.create(
  first_name: "Logan",
  middle_initial: "M",
  last_name: "Kucera",
  address: "2701 West Prospect Rd Up",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Kucera_L.pdf",
  city: "Ashtabula",
  state: "OH",
  zip_code: "44004",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Olivia",
  middle_initial: "G",
  last_name: "Laubscher",
  address: "188 Belmont Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Laubscher_O.pdf",
  city: "Toano",
  state: "VA",
  zip_code: "23168",
  application_received: "2020-04-30"
)

Applicant.create(
  first_name: "Clare",
  middle_initial: "E",
  last_name: "Madden",
  address: "510 Poplar St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Madden_C.pdf",
  city: "Wamego",
  state: "KS",
  zip_code: "66547",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Kolbe",
  middle_initial: "L",
  last_name: "Madden",
  address: "510 Poplar St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Madden_K.pdf",
  city: "Wamego",
  state: "KS",
  zip_code: "66547",
  application_received: "2020-03-24"
)

Applicant.create(
  first_name: "Morgan",
  middle_initial: "L",
  last_name: "Madison",
  address: "14 Oregon Trl",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Madison_M.pdf",
  city: "Waterford",
  state: "NY",
  zip_code: "12188",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Luke",
  middle_initial: "A",
  last_name: "McCann",
  address: "1504 Inventors Ct",
  link: "https://www.hemophilia-nc.org/xyzzy-20/McCann_L.pdf",
  city: "Fort Myers",
  state: "FL",
  zip_code: "33901",
  application_received: "2020-03-05"
)

Applicant.create(
  first_name: "Sophia",
  middle_initial: "",
  last_name: "Mendez",
  address: "502 Border St, Apt B",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Mendez_S.pdf",
  city: "Boston",
  state: "MA",
  zip_code: "2128.0",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Nathan",
  middle_initial: "G",
  last_name: "Mermilloid",
  address: "5110 Magnolia Avenue",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Mermilloid_N.pdf",
  city: "Riverside",
  state: "CA",
  zip_code: "92506",
  application_received: "2020-05-09"
)

Applicant.create(
  first_name: "Grace",
  middle_initial: "",
  last_name: "Miller",
  address: "17630 Almy Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Miller_G.pdf",
  city: "Howard City",
  state: "MI",
  zip_code: "49329",
  application_received: "2020-03-27"
)

Applicant.create(
  first_name: "Sydney",
  middle_initial: "M",
  last_name: "Norwood",
  address: "2514 Robin Hill Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Norwood_S.pdf",
  city: "Charlotte",
  state: "NC",
  zip_code: "28210",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Bradley",
  middle_initial: "B",
  last_name: "Odac",
  address: "51 Coachmen Ct",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Odac_B.pdf",
  city: "Columbia",
  state: "SC",
  zip_code: "29229",
  application_received: "2020-05-04"
)

Applicant.create(
  first_name: "Alexa",
  middle_initial: "R",
  last_name: "Olson",
  address: "269 Peoria Ln",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Olson_A.pdf",
  city: "O'Fallon",
  state: "IL",
  zip_code: "62269",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Yan",
  middle_initial: "D",
  last_name: "Ostanin",
  address: "3019 W 107th Pl, Unit B",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Ostanin_Y.pdf",
  city: "West Minster",
  state: "CO",
  zip_code: "80031",
  application_received: "2020-04-14"
)

Applicant.create(
  first_name: "Elaine",
  middle_initial: "P",
  last_name: "Oyama",
  address: "313 Enchanted Way",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Oyama_E.pdf",
  city: "Del Rio",
  state: "TX",
  zip_code: "78840",
  application_received: "2020-04-28"
)

Applicant.create(
  first_name: "Seth",
  middle_initial: "L",
  last_name: "Patsakos",
  address: "261 Kissel Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Patsakos_S.pdf",
  city: "Staten Island",
  state: "NY",
  zip_code: "10310",
  application_received: "2020-03-18"
)

Applicant.create(
  first_name: "Aiden",
  middle_initial: "X",
  last_name: "Peterkin",
  address: "5414 Joan St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Peterkin_A.pdf",
  city: "Zachary",
  state: "LA",
  zip_code: "70791",
  application_received: "2020-01-29"
)

Applicant.create(
  first_name: "Corey",
  middle_initial: "TJ",
  last_name: "Pierce",
  address: "3621 NE12th",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Pierce_C.pdf",
  city: "Portland",
  state: "OR",
  zip_code: "97212",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Ida",
  middle_initial: "M",
  last_name: "Reynoso",
  address: "2125 Avalon Ave",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Reynoso_I.pdf",
  city: "Pomona",
  state: "CA",
  zip_code: "91768",
  application_received: "2020-04-28"
)

Applicant.create(
  first_name: "Tori",
  middle_initial: "D",
  last_name: "Robbins",
  address: "225 Schooner Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Robbins_T.pdf",
  city: "Manahawkin",
  state: "NJ",
  zip_code: "8050.0",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Anmol",
  middle_initial: "",
  last_name: "Saini",
  address: "1041 Wind Pointe Way",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Saini_A.pdf",
  city: "Englewood",
  state: "OH",
  zip_code: "45322",
  application_received: "2020-04-17"
)

Applicant.create(
  first_name: "Conail",
  middle_initial: "J",
  last_name: "Sauter",
  address: "2908 NE 193rd St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Sauter_C.pdf",
  city: "Lk Forest Pk",
  state: "WA",
  zip_code: "98155",
  application_received: "2020-04-30"
)

Applicant.create(
  first_name: "Jacob",
  middle_initial: "S",
  last_name: "Schoenvogel",
  address: "13010 Dakar Dr",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Schoenvogel_J.pdf",
  city: "Houston",
  state: "TX",
  zip_code: "77065",
  application_received: "2020-05-05"
)

Applicant.create(
  first_name: "Shane",
  middle_initial: "K",
  last_name: "Secinaro",
  address: "225 Valley Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Secinaro_S.pdf",
  city: "New Durham",
  state: "NH",
  zip_code: "3855.0",
  application_received: "2020-04-30"
)

Applicant.create(
  first_name: "Bridget",
  middle_initial: "M",
  last_name: "Stevenson",
  address: "2507 Beverly Way",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Stevenson_B.pdf",
  city: "Ottawa",
  state: "IL",
  zip_code: "61350",
  application_received: "2020-05-01"
)

Applicant.create(
  first_name: "Lily",
  middle_initial: "M",
  last_name: "Tignor",
  address: "217 Dry Fork Creek Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Tignor_L.pdf",
  city: "Bethpage",
  state: "TN",
  zip_code: "37022",
  application_received: "2020-04-28"
)

Applicant.create(
  first_name: "Laura",
  middle_initial: "L",
  last_name: "Van Aken",
  address: "183 Lindorf St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Van Aken_L.pdf",
  city: "Ulster Park",
  state: "NY",
  zip_code: "12487",
  application_received: "2020-03-23"
)

Applicant.create(
  first_name: "Timothy",
  middle_initial: "R",
  last_name: "Wohl",
  address: "155 E S Boundary St",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Wohl_T.pdf",
  city: "Perrysburg",
  state: "OH",
  zip_code: "43551",
  application_received: "2020-04-01"
)

Applicant.create(
  first_name: "Carleigh",
  middle_initial: "R",
  last_name: "Deitsch",
  address: "5397 E. Kremer Hoying Road",
  link: "https://www.hemophilia-nc.org/xyzzy-20/Deitsch_C.pdf",
  city: "St. Henry",
  state: "OH",
  zip_code: "45883",
  application_received: "2020-05-15"
)
