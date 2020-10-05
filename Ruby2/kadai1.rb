def get_total_price(count)
  price = 0 
  if count<=0
    puts "nhap sai"  
  elsif count > 0 && count <3
    price = 30000 * count 
  else 
    price = 30000 * count -10000
  end
  puts "total price : #{price}"
end
get_total_price(0)