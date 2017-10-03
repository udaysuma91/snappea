# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.find_or_create_by(name: 'Entree')
Category.find_or_create_by(name: 'Appetizer')
Category.find_or_create_by(name: 'Dessert')
Category.find_or_create_by(name: 'Beverage')
Category.find_or_create_by(name: 'Side')

Menu.find_or_create_by(name: 'item 1', category_id: 1, restaurant_id: 1 ,description: 'test item 1')
Menu.find_or_create_by(name: 'item 2', category_id: 1, restaurant_id: 1 ,description: 'test item 2')
Menu.find_or_create_by(name: 'item 3', category_id: 2, restaurant_id: 1 ,description: 'test item 3')
Menu.find_or_create_by(name: 'item 4', category_id: 2, restaurant_id: 2 ,description: 'test item 4')
Menu.find_or_create_by(name: 'item 5', category_id: 3, restaurant_id: 2 ,description: 'test item 5')
Menu.find_or_create_by(name: 'item 6', category_id: 3, restaurant_id: 2 ,description: 'test item 6')
Menu.find_or_create_by(name: 'item 7', category_id: 4, restaurant_id: 3 ,description: 'test item 7')
Menu.find_or_create_by(name: 'item 8', category_id: 4, restaurant_id: 3 ,description: 'test item 8')
Menu.find_or_create_by(name: 'item 9', category_id: 5, restaurant_id: 4 ,description: 'test item 9')
Menu.find_or_create_by(name: 'item 10', category_id: 5, restaurant_id: 4 ,description: 'test item 10')

User.find_or_create_by(name: 'test client',guid: "49d0b9e8-d9b1-46d6-b784-cd0258ffdc5c")

Restaurant.find_or_create_by(name: 'Restaurant 1', rating: 4.2, address: 'abc path', description: 'test 1')
Restaurant.find_or_create_by(name: 'Restaurant 2', rating: 4.5, address: 'pqr path', description: 'test 2')
Restaurant.find_or_create_by(name: 'Restaurant 3', rating: 3.2, address: 'xyz path', description: 'test 3')
Restaurant.find_or_create_by(name: 'Restaurant 4', rating: 3.5, address: 'mno path', description: 'test 4')

MenuTag.find_or_create_by(name: 'MenuTag 1', menu_id: 1)
MenuTag.find_or_create_by(name: 'MenuTag 2', menu_id: 1)
MenuTag.find_or_create_by(name: 'MenuTag 3', menu_id: 2)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 2)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 3)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 3)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 4)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 4)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 5)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 5)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 6)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 6)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 7)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 8)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 8)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 9)
MenuTag.find_or_create_by(name: 'MenuTag 4', menu_id: 10)
