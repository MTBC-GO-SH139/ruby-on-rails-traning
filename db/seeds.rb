# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'csv'

csv_text_patients = File.read(Rails.root.join('db' , 'patients.csv'))

csv = CSV.parse(csv_text_patients, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  p = Patient.new
  p.name = row['name']
  p.email = row['email']
  p.birth_date = row['birth_date']
  p.phone = row['phone']
  p.save
  puts "#{p.name}, with email '#{p.email}' saved"
end
