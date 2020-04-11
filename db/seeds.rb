# frozen_string_literal: true

Dir[File.dirname(__FILE__) + "/seeds/*.rb"].sort.each { |file| require file }

%w[User].each do |model|
  print "Seeding #{model.pluralize}..." unless Rails.env.test?
  "#{model}Seeds".constantize.run
  puts "done" unless Rails.env.test?
end
