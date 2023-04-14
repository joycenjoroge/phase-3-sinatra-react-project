puts "🌱 Seeding spices..."

# Seed your database here
# db/seeds.rb

# Create some users
user1 = User.create(username: "joeblack", email: "joeblack@gmail.com", password: "password")
user2 = User.create(username: "janesmith", email: "janesmith@gmail.com", password: "password")
user3 = User.create(username: "joycenjeri", email: "bobsmith@example.com", password: "password")

# Create some recipes for each user
recipe1 = Recipe.create(title: "Spaghetti and Meatballs", description: "Classic Italian pasta dish", user: user1)
recipe2 = Recipe.create(title: "Chicken Tikka Masala", description: "Indian curry dish", user: user1)
recipe3 = Recipe.create(title: "Beef Stew", description: "Hearty stew for a cold night", user: user2)
recipe4 = Recipe.create(title: "Grilled Chicken Salad", description: "Healthy and delicious", user: user3)
recipe5 = Recipe.create(title: "Chocolate Cake", description: "Choclate dessert", user: user3)


puts "✅ Done seeding!"
