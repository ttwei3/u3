require_relative 'ar.rb'

10.times do
  category = Category.create(name:Faker::Commerce.material,
                            description: Faker::Commerce.material)
  10.times do
    Product.create(name:Faker::Commerce.product_name,
                    description:Faker::Commerce.product_name,
                    price:Faker::Commerce.price,
                    stock_quantity:Faker::Number.between(from: 10, to: 100),
                    category:category)
  end
end