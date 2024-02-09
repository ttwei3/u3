require_relative 'ar.rb'

curtain = Product.where(:name => 'Curtain').first

puts curtain.inspect

curtain.destroy  unless curtain.nil?

puts curtain.inspect