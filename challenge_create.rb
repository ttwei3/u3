require_relative 'ar.rb'

#method 1
new_product = Product.new

new_product.name = "Birthday decoration"
new_product.description = "Birthday decoration"
new_product.price = "5.89"
new_product.stock_quantity = "20"

new_product.save

puts new_product.inspect

#method 2
curtain = Product.new( name:  "Curtain",
                      description: "Grey large curtain.",
                      price:  "49",
                      stock_quantity: 10)
curtain.save

#method 3
silk = Product.create( name:  "Silk",
                        description: "Soy milk in carton.",
                        price:  "4.25",
                        stock_quantity: 50)

#missing required columns
drawpaper = Product.new( name: "Draw Paper" )

# Save will return false if any of validations fail.
if (drawpaper.save)
  puts "Draw paper was saved to the database products table."
  puts drawpaper.inspect
else
  puts "There was an error saving draw paper to the database."

# Loop through all the validation errors.
drawpaper.errors.messages.each do |column, errors|
  errors.each do |error|
    puts "The #{column} property #{error}."
  end
end
end