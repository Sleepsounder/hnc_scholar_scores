# frozen_string_literal: true

require "csv"
require "pry"

class CreateSeedFromCsv
  # database_key_names = [:first_name, :last_name, :address, :link, :middle_initial, :city, :state, :zip_code, :application_received] # rubocop:disable Layout/LineLength
  # run this in irb on command line - note , the single quotes in parentheses is whatever file name:
  # ruby -r "./convert_applicant_csv.rb" -e "CreateSeedFromCsv.execute('../../file_name_from_desktop.csv')" # rubocop:disable Layout/LineLength

  def self.execute(file)
    csv_data = read_file(file)
    array_of_hashes = convert_to_hashes(csv_data)
    mapped_link_and_column_names = map_link_and_column_names(array_of_hashes)
    puts stringify_for_seed(mapped_link_and_column_names)
  end

  def self.read_file(file)
    CSV.read(file, { encoding: "UTF-8",
                     headers: true,
                     header_converters: :symbol,
                     converters: :all })
  end

  def self.convert_to_hashes(csv_data)
    csv_data.map(&:to_hash)
  end

  def self.map_link_and_column_names(array_of_hashes)
    array_of_hashes.map do |hash|
      {
        first_name: hash[:first_name],
        middle_initial: hash[:mi],
        last_name: hash[:last_name],
        address: hash[:address],
        link: hash[:filename],
        city: hash[:city],
        state: hash[:state],
        zip_code: hash[:zip].to_s,
        application_received: parse_date(hash[:receipt])
      }
    end
  end

  def self.parse_date(string_mmddyy)
    Date.strptime(string_mmddyy, "%m/%d/%y")
  end

  def self.stringify_for_seed(data)
    stringified_array = data.map do |single_hash|
      single_hash.map { |key_val| "\s\s#{key_val[0]}: \"#{key_val[1]}\"" }
    end
    joined = stringified_array.map do |array|
      array.join(",\n")
    end
    joined.map do |appl|
      "Applicant.create(\n#{appl}\n)\n\r"
    end
  end
end
