namespace :utils do
  desc "Popular o db"
  task seed: :environment do
    
    puts "Gerando os Contatos (Contacts)..."
    10.times do |i|
       Contact.create!(
         name: Faker::Name.name,
         email: Faker::Internet.email,
         kind: Kind.all.sample ,
         rmk: Faker::Lorem.paragraph([1,2,3,4,5].sample)
       )
    end
    puts "Gerando os Contatos (Contacts)...[OK]"
  
  
    puts "Gerando endereços (Addresses)..."
    Contact.all.each do |_contact|
      Address.create!(
              street: Faker::Address.street_address,
              city: Faker::Address.city,
              state: Faker::Address.state_abbr,
              contact: _contact
            )
    end
    puts "Gerando endereços (Addresses)...[OK]" 
  
  
    puts "Gerando telefones (Phones)..."
    Contact.all.each do |_contact|
      Random.rand(1..5).times do |i|
        Phone.create!(
          phone: Faker::PhoneNumber.phone_number,
          contact: _contact
          )
      end
    end
  puts "Gerando telefones (Phones)...[OK]"
  
  end
  
end
