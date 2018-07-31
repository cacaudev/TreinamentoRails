# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Kind.create(description: "Amigo")
puts "Gerando os tipos de Contato (Kinds)..."
Kind.create!([ {description: "Comércio"}, 
               {description: 'Amigo'},
               {description: 'Contato'} ])
puts "Gerando os tipos de Contato (Kinds)...[OK]"
