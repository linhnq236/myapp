# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# [
#   {id: 1, name_room: 'H01'},
#   {id: 2, name_room: 'H02'},
#   {id: 3, name_room: 'H03'},
#   {id: 4, name_room: 'H04'},
# ].each do |attr|
#   room = Room.find_by(id: attr[:id])
#   Room.transaction do
#     unless room
#       room = Room.new(attr)
#       room.save
#     else
#       room.update_attributes attr
#     end
#   end
# end
#
# [
#   {id: 1,name_equipment: 'Đèn 13', active: false},
#   {id: 2,name_equipment: 'Đèn 14', active: false},
#   {id: 3,name_equipment: 'Đèn 15', active: false},
# ].each do |attr|
#   equipment = Equipment.find_by(id: attr[:id])
#   Equipment.transaction do
#     unless equipment
#       equipment = Equipment.new(attr)
#       equipment.save
#     else
#       equipment.update_attributes attr
#     end
#   end
# end
