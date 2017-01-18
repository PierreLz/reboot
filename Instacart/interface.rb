
require_relative 'methods'

products = [
  {
    name: "6 pommes",
    price: 2.50,
    stock: 10,
    sku: "apple5"
  },

  {
    name: "Madeleines",
    price: 42.0,
    stock: 1,
    sku: "mad68"
  },

  {
    name: "Côte de boeuf",
    price: 21,
    stock: 3,
    sku: "miam12"
  }
]

puts ("-"*10) + "Welcome to BESTMAX shopping center" + ("-"*10)
puts "All items are available for you today, select anything you want !"

choice = ["A", "R", "C", "P"]
cart = []

loop do
  puts "SHOP PRODUCTS"
  puts "--------------------------------------------------------"
  display_store(products)
  puts "--------------------------------------------------------"
  puts "Whats would you like to do ?"
  puts "-----------------------------"
  puts " --> Add a product to your cart (A)"
  puts " --> Remove a product to your cart (R)"
  puts " --> See whats in your cart (C)"
  puts " --> Print your bill (P)"
  puts " --> Exit (E)"
  user_choice = gets.chomp
  shopping_action(user_choice, products, cart)
  break if user_choice == "E"
end




