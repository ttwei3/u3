require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

all_products = Product.all
first_products = Product.first.inspect

puts "The first product is #{first_products}."

column = Product.column_names
puts column

filtered_products = Product.where('price > ? AND name LIKE ?', 10, 'C%')
filtered_products.each { |product| puts product.name }

low_stock = Product.where('stock_quantity < 5').count
puts "Total number of products with a low stock quantity is #{low_stock}."

#1
first_product = Product.first
category_of_first_product = first_product.category
puts "#{category_of_first_product.name}"

#2
specific_category = Category.find_by(name: 'Beverages')
new_product = specific_category.products.build(name: 'Mango Juice', description: 'A refreshing drink of mango', price: 5.99, stock_quantity: 100)
new_product.save
puts "New product created: #{new_product.inspect}"

#3
high_price_product = specific_category.products.where('price > ?', 20)
puts "Expensive products in '#{specific_category.name}' category:"
high_price_product.each { |product| puts product.name }