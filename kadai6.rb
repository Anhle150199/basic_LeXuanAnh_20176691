printf "学生の人数を入力してください >"
number = gets.to_i
学生 = {}
counter = 0
for counter in 0..(number-1)
  puts "#{counter+1}番目の学生の名前は何ですか?"
  printf "名前 > "
  name = gets.chomp
  puts "#{counter+1}番目の学生番号は何ですか?"
  printf "学生番号 > "
  mssv = gets.chomp
  学生[mssv] = name
end
puts "-------------名簿---------------"
学生.each do |key, value|
  puts "学生番号: #{key} - 名前: #{value}"
end
puts "--------------------------------"