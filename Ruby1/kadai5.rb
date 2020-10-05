printf "学生の人数を入力してください >"
number = gets.to_i
学生 = []
counter = 0
for counter in 0..(number-1)
  puts "#{counter+1}番目の学生の名前は何ですか?"
  printf "名前 >"
  学生 << gets.chomp
end
puts "-------------名簿---------------"
counter =0
for counter in 0..(学生.length-1)
  puts "#{counter+1}番目の学生は#{学生[counter]}です"
end
puts "--------------------------------"