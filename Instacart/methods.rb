

def find(sku, products)
  products.find {|product| product[:sku] == sku }
end


def display_store(products)
    products.each_with_index do |product, index|
    puts "#{index + 1} - #{product[:name]} : #{product[:price]}€ (#{product[:stock]})"
    end
  end

def shopping_action(user_choice, products, cart)
    case user_choice
    when "A"
      puts "--- Select number to add product"
      chosen_product_index = gets.chomp.to_i
      product = products[chosen_product_index -1]

      puts "--- Select number to add quantity"
      chosen_quantity = gets.chomp.to_i
      loop do
        break if chosen_quantity <= product[:stock]
        puts "--- Quantity cannot exceed the stock available !"
        chosen_quantity = gets.chomp.to_i
      end
      # add to cart
      cart << {
        sku: product[:sku],
        quantity: chosen_quantity
      }
      product[:stock] -= chosen_quantity
    when "R"
      puts "Choose this number of the item to remove"
        chosen_item_to_remove_index = gets.chomp.to_i - 1
        item_to_remove = cart.delete_at(chosen_item_to_remove_index)
    # re add to stock
        product = products.find { |product| product[:sku] == item_to_remove[:sku] }
        product[:stock] += item_to_remove[:quantity]
      puts "#{product[:name]} removed sucessfully !"
    when "C"
      puts "--------------------------------------------"
      puts "YOUR CART IS COMPOSED OF >>>"
      cart.each_with_index do |product, index|
        # recuperer le sku
        # imprimer la quantité et le nom du produit dans l'interface
        puts "#{index + 1} - #{product[:quantity]} X #{find(product[:sku], products)[:name]}"
        puts "----"
      end
    when "P"
      total_price = cart.reduce(0) do |memo, elem|
        product = products.find { |product| product[:sku] == elem[:sku] }
        memo += elem[:quantity] * product[:price]
      end
      puts "=============YOUR BILL============="
      puts "TOTAL #{total_price} euros"
      puts "===================================="
      sleep(1)
    end
end




