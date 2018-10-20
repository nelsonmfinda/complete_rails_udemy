# frozen_string_literal: true

namespace :utils do
  desc 'Generate fake data such as names, addresses, and phone numbers'
  task seed: :environment do
    8.times do
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        kind: Kind.all.sample,
        rmk: Faker::Lorem.paragraph
      )
    end

    puts 'Gerando os Endereços (Adresses)...'
    Contact.all.each do |contact|
      Address.create(
        street: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
        contact: contact
      )
    end
    puts 'Gerando os Endereços (Adresses)... [OK]'

    puts 'Gerando os Telefones (Phones)...'
    Contact.all.each do |contact|
      Phone.create(
        phone: Faker::PhoneNumber.cell_phone,
        contact: contact
      )
    end
    puts 'Gerando os Telefones (Phones)... [OK]'
  end
end
