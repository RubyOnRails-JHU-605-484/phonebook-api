Contact.delete_all

Faker::Config.locale = 'en-US'

starting_time = Time.now
20000.times do |number_of_times|
  Contact.create! first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email

  if number_of_times % 1000 == 0 and number_of_times > 0
    elapsed_time = (Time.now - starting_time).ceil
    puts "Created #{number_of_times + 1} contacts - #{elapsed_time} seconds"   
  end  
end