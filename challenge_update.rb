require_relative 'ar.rb'

high_stock_products = Product.where('stock_quantity > 40')

high_stock_products.each do |product|
  product.stock_quantity += 1
  product.save
end

high_stock_products.each do |product|
  puts product.inspect
end