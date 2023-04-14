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
recipe3 = Recipe.create(
  title: "Spaghetti Bolognese",
  description: "A classic Italian pasta dish with a rich tomato sauce",
  ingredients: "spaghetti, ground beef, tomato sauce, onion, garlic, olive oil, salt, pepper",
  instructions: "1. Cook spaghetti according to package instructions. 2. In a large saucepan, heat olive oil over medium heat. 3. Add diced onion and garlic and sauté until soft. 4. Add ground beef and cook until browned. 5. Add tomato sauce and season with salt and pepper. 6. Simmer for 10-15 minutes. 7. Serve hot over spaghetti.",
  user: user1
)

recipe4 =Recipe.create(
  title: "Chocolate Cake",
  description: "A decadent chocolate cake for any occasion",
  ingredients: "flour, sugar, cocoa powder, baking powder, baking soda, salt, eggs, milk, vegetable oil, vanilla extract",
  instructions: "1. Preheat oven to 350°F. 2. In a mixing bowl, combine flour, sugar, cocoa powder, baking powder, baking soda, and salt. 3. In another mixing bowl, beat eggs, milk, vegetable oil, and vanilla extract. 4. Gradually add dry ingredients to the wet mixture and mix until well combined. 5. Pour batter into a greased cake pan. 6. Bake for 35-40 minutes or until a toothpick inserted into the center of the cake comes out clean. 7. Let cool before serving.",
  user: user2
)

recipe5 =Recipe.create(
  title: "Caesar Salad",
  description: "A simple and refreshing salad with a tangy dressing",
  ingredients: "romaine lettuce, croutons, Parmesan cheese, olive oil, lemon juice, Dijon mustard, garlic, Worcestershire sauce, salt, pepper",
  instructions: "1. Wash and chop romaine lettuce. 2. Toss with croutons and shaved Parmesan cheese. 3. In a small mixing bowl, whisk together olive oil, lemon juice, Dijon mustard, garlic, Worcestershire sauce, salt, and pepper. 4. Drizzle dressing over the salad and toss to coat. 5. Serve immediately.",
  user: user3
)


puts "✅ Done seeding!"
