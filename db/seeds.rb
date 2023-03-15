# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

puts "Seeding..."
Activity.create(name: "Doblar Ropa", description: "", level: "1", status: "created")
Activity.create(name: "Barrer y Trapear", description: "", level: "1", status: "created")
Activity.create(name: "Lavar los platos", description: "", level: "1", status: "created")
Activity.create(name: "Alimentar mascota", description: "", level: "1", status: "created")
Activity.create(name: "Limpiar arena de gatos", description: "", level: "1", status: "created")
Activity.create(name: "Limpiar jaula Aves", description: "", level: "1", status: "created")
puts "Seeding done."
