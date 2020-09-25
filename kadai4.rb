number = gets.to_i
test1 = number % 2
test2 = number % 7
if number > 0
  if test1 == 0 && test2 == 0 
    puts "14の倍数です"
  elsif test1 == 0 
    puts "2の倍数です"
  elsif test2 == 0
    puts "7の倍数です" 
  else
    puts "2の倍数でも7の倍数でもありません"
  end
else
  puts "整数ではありません"
end