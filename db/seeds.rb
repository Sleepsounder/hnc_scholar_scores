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
  first_name: "Aidan",
  middle_initial: "M",
  last_name: "Blakla",
  address: "3027 Mercer St.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Blakla-Aidan.pdf",
  city: "Philadelphia",
  state: "PA",
  zip_code: "19134",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Madison",
  middle_initial: "G",
  last_name: "Boggs",
  address: "PO Box 582",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Boggs-Madison.pdf",
  city: "Waller",
  state: "TX",
  zip_code: "77484",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Kennedy",
  middle_initial: "J",
  last_name: "Brown",
  address: "4658 Mabry Pkwy",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Brown-Kennedy.pdf",
  city: "Rock Hill",
  state: "SC",
  zip_code: "29732",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Peyton",
  middle_initial: "M",
  last_name: "Brush",
  address: "1106 Longford Circle",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Brush-Peyton.pdf",
  city: "Southlake",
  state: "TX",
  zip_code: "76092",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Nicholas",
  middle_initial: "L",
  last_name: "Cleghorn",
  address: "1307 Pheasant Circle",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Cleghorn-Nicholas.pdf",
  city: "Suffolk",
  state: "VA",
  zip_code: "23434",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Yazamis",
  middle_initial: "P",
  last_name: "Cupec",
  address: "135 Southern Pl.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Cupec-Yazamis.pdf",
  city: "Lillington",
  state: "NC",
  zip_code: "27546",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Zoe",
  middle_initial: "F",
  last_name: "Davenport",
  address: "108 East 10th Street",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Davenport-Zoe.pdf",
  city: "Washington",
  state: "NC",
  zip_code: "27889",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Samantha",
  middle_initial: "E",
  last_name: "Dowdy",
  address: "2122 Jasany Dr.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Dowdy-Samantha.pdf",
  city: "Sanford",
  state: "NC",
  zip_code: "27330",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Brian",
  middle_initial: "J",
  last_name: "Duval",
  address: "1565 Rhode Island Ave N",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Duval-Brian.pdf",
  city: "Golden Valley",
  state: "MN",
  zip_code: "55427",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Joshua",
  middle_initial: "M",
  last_name: "Galley",
  address: "9750 W. Fork Rd.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Galley-Joshua.pdf",
  city: "Georgetown",
  state: "OH",
  zip_code: "45121",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Carlos",
  middle_initial: "A",
  last_name: "Gasca",
  address: "14110 Amazing Valley",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Gasca-Carlos.pdf",
  city: "San Antonio",
  state: "TX",
  zip_code: "78254",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Ivan",
  middle_initial: "M",
  last_name: "Giron",
  address: "136 E 107th St.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Giron-Ivan.pdf",
  city: "Los Angeles",
  state: "CA",
  zip_code: "90003",
  application_received: "2021-04-12"
)

Applicant.create(
  first_name: "Keith",
  middle_initial: "J",
  last_name: "Kaminskas",
  address: "160 Leach Avenue",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Kaminskas-Keith.pdf",
  city: "Park Ridge",
  state: "NJ",
  zip_code: "4014",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Evan",
  middle_initial: "",
  last_name: "Kersletter",
  address: "1716 Rock Ledge Ct.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Kersletter-Evan.pdf",
  city: "Lancaster",
  state: "PA",
  zip_code: "17603",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Isabella",
  middle_initial: "S",
  last_name: "Luckey",
  address: "5121 John Holmes Rd.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Luckey-Isabella.pdf",
  city: "Ann Arbor",
  state: "MI",
  zip_code: "48103",
  application_received: "2021-05-11"
)

Applicant.create(
  first_name: "Luke",
  middle_initial: "D",
  last_name: "Luckey",
  address: "3081 Bridgefield Dr.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Luckey-Luke.pdf",
  city: "Ann Arbor",
  state: "MI",
  zip_code: "48108",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Noah",
  middle_initial: "S",
  last_name: "McElravy",
  address: "26 Kincaid Drive",
  link: "https://www.hemophilia-nc.org/xyzzy-21/McElravy-Noah.pdf",
  city: "Fairfield",
  state: "IL",
  zip_code: "62837",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Nathan",
  middle_initial: "G",
  last_name: "Mermilloid",
  address: "5110 Magnolia Avenue",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Mermilloid-Nathan.pdf",
  city: "Riverside",
  state: "CA",
  zip_code: "92506",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Diana",
  middle_initial: "M",
  last_name: "Mills",
  address: "21 Steel Ct.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Mills-Diana.pdf",
  city: "Cameron",
  state: "NC",
  zip_code: "28326",
  application_received: "2021-05-07"
)

Applicant.create(
  first_name: "Kandhan",
  middle_initial: "S",
  last_name: "Nadarajah",
  address: "665 Eastlook Dr.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Nadarajah-Kandhan.pdf",
  city: "Saline",
  state: "MI",
  zip_code: "48126",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Evren",
  middle_initial: "T",
  last_name: "Ozgu",
  address: "30 Midvale Drive",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Ozgu-Evren.pdf",
  city: "New Providence",
  state: "NJ",
  zip_code: "7974.0",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Farah",
  middle_initial: "C",
  last_name: "Pavri",
  address: "961 Franklin Turnpike",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Pavri-Farah.pdf",
  city: "Allendale",
  state: "NJ",
  zip_code: "3841",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Savannah",
  middle_initial: "M",
  last_name: "Reimann",
  address: "2077 S. Reseda Ct.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Reimann-Savannah.pdf",
  city: "Gilbert",
  state: "AZ",
  zip_code: "85295",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Dylan",
  middle_initial: "T",
  last_name: "Rooney",
  address: "472 Briarhill oad",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Rooney-Dylan.pdf",
  city: "Springfield",
  state: "PA",
  zip_code: "19064",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Steven",
  middle_initial: "M",
  last_name: "Sclafani",
  address: "106 N. John St.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Sclafani-Steven.pdf",
  city: "North Massapequa",
  state: "NY",
  zip_code: "11758",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Logan",
  middle_initial: "J",
  last_name: "Sett",
  address: "7821 Wahlberg Drive",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Sett-Logan.pdf",
  city: "Zionsville",
  state: "IN",
  zip_code: "46077",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Isabel",
  middle_initial: "M",
  last_name: "Solivan",
  address: "323 W. Lincoln St.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Solivan-Isabel.pdf",
  city: "Clarinda",
  state: "IA",
  zip_code: "51632",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Madelyne",
  middle_initial: "K",
  last_name: "Street",
  address: "155 Olancha Avenue",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Street-Madelyne.pdf",
  city: "Boone",
  state: "NC",
  zip_code: "28607",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Grace",
  middle_initial: "E",
  last_name: "Swarens",
  address: "3012 Wolf Ridge Drive",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Swarens-Grace.pdf",
  city: "New Albany",
  state: "IN",
  zip_code: "47150",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Lily",
  middle_initial: "M",
  last_name: "Tignor",
  address: "217 Dry Fork Creek Rd",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Tignor-Lily.pdf",
  city: "Bethpage",
  state: "TN",
  zip_code: "37022",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Jared",
  middle_initial: "E",
  last_name: "Trost",
  address: "30017 Robert St.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Trost-Jared.pdf",
  city: "Wickliffe",
  state: "OH",
  zip_code: "44092",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Josiah",
  middle_initial: "Z",
  last_name: "Walker",
  address: "203 Maryfield Court",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Walker-Josiah.pdf",
  city: "Hampton",
  state: "VA",
  zip_code: "23666",
  application_received: "2021-05-10"
)

Applicant.create(
  first_name: "Rachel",
  middle_initial: "K",
  last_name: "Wile",
  address: "4259 Meadow Lark Drive",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Wile-Rachel.pdf",
  city: "Calabasas",
  state: "CA",
  zip_code: "91302",
  application_received: "2021-05-06"
)

Applicant.create(
  first_name: "Timothy",
  middle_initial: "R",
  last_name: "Wohl",
  address: "155 E South Boundary St.",
  link: "https://www.hemophilia-nc.org/xyzzy-21/Wohl-Timothy.pdf",
  city: "Perrysburg",
  state: "OH",
  zip_code: "43551",
  application_received: "2021-05-10"
)
