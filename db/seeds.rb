# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Region.create!([
  {name:'北海道'.to_i},
  {name:'沖縄'.to_i},
  {name:'東北・北陸'.to_i},
  {name:'関東・甲信越'.to_i},
  {name:'関西'.to_i},
  {name:'中国・四国'.to_i},
  {name:'九州'.to_i}
  ])

