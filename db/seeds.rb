# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'activerecord-reset-pk-sequence'

Doctor.destroy_all
Doctor.reset_pk_sequence
#ActiveRecord::Base.connection.reset_pk_sequence!('doctors')
Patient.destroy_all
Patient.reset_pk_sequence
#ActiveRecord::Base.connection.reset_pk_sequence!('patients')
Appointment.destroy_all
Appointment.reset_pk_sequence
#ActiveRecord::Base.connection.reset_pk_sequence!('appointments')
City.destroy_all
City.reset_pk_sequence
#ActiveRecord::Base.connection.reset_pk_sequence!('cities')
Speciality.destroy_all
Speciality.reset_pk_sequence

JoinTableDoctorsAndSpeciality.destroy_all
JoinTableDoctorsAndSpeciality.reset_pk_sequence

spec = ["Generalist", "Coeur", "Poumons"]

10.times do 
  u = City.create(name: Faker::Nation.capital_city)
end

10.times do
  #u = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: spec.sample, zip_code: rand(00001..99999).to_s, city_id: rand(1..10))
  u = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: rand(00001..99999).to_s, city_id: rand(1..10))
  u = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..10))
end

10.times do
  u = Appointment.create(date: Time.now, patient_id: rand(1..10), doctor_id: rand(1..10), city_id: rand(1..10))
end

10.times do 
  u = Speciality.create(name: spec.sample)
end

10.times do 
  u = JoinTableDoctorsAndSpeciality.create(doctor_id: rand(1..10), speciality_id: rand(1..10))
end