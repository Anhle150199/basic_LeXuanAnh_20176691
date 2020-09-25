year = gets.to_i
if   year == 1916 || year == 1940 || year == 1944
  puts "#{year}年にオリンピックは開催されませんでした"
elsif  year%4 == 0 && year >= 1896 && year <=2020
    puts "#{year}年にオリンピックは開催されまでした"
else 
  puts "#{year}年にオリンピックは開催されませんでした"
end