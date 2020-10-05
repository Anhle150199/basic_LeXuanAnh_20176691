total_money = 123456789
acc = "abc"
passwd = "12345"
class Menu
  attr_accessor :language
  attr_accessor :content
  attr_accessor :name
  attr_accessor :pass
  attr_accessor :request
  attr_accessor :result1
  attr_accessor :result2
  attr_accessor :unit
  attr_accessor :error1
  attr_accessor :error2
  attr_accessor :endd
  def initialize(language:,content:,name:,pass:,request:,result1:,result2:,unit:,error1:,error2:,endd:)
    self.language = language
    self.content = content
    self.name = name
    self.pass = pass
    self.request = request
    self.result1 = result1
    self.result2 = result2
    self.unit = unit
    self.error1 = error1
    self.error2 = error2
    self.endd = endd
  end
end
menu1=Menu.new(language:"日本語を選択しました。",content:"アカウントとパスワードを入力してください ",name:"アカウント: ",pass:"暗証番号: ",request:"引き出したい金額を入力してください",result1:"引き出し金額は",result2:"残りの金額は",unit:"vnd です",error1:"アカウントとパスワードの入力が間違いました",error2:"引き出したい金額が上限を超えています",endd:"-------------終了------------- ")
menu2=Menu.new(language:"You have chosen English.",content:"Please enter your account and password",name:"account: ",pass:"password: ",request:"Please enter the amount you want to withdraw",result1:"The withdrawal amount is",result2:"The remaining amount is",unit:"vnd",error1:"You have entered the wrong account and password",error2:"The amount you want to withdraw exceeds the upper limit",endd:"------------- End --------------")
menu3=Menu.new(language:"Bạn đã chọn tiếng việt",content:"Vui lòng nhập tài khoản và mật khẩu của bạn",name:"tài khoản: ",pass:"mật khẩu: ",request:"Vui lòng nhập số tiền bạn muốn rút",result1:"Số tiền rút là",result2:"Số tiền còn lại là",unit:"vnd",error1:"Nhập sai tài khoản và mật khẩu",error2:"Số tiền bạn muốn rút vượt quá giới hạn trên",endd:"------------- Kết thúc --------------")
menus=[menu1,menu2,menu3]
puts "言語を選んでください\n日本語の場合は１を選んでください\n英語の場合は２を選んでください\nベトナム語の場合は３を選んでください\n------------------------------------"
x=gets.to_i
if x>3||x<1
  puts "番号が間違っています"
  puts "-------------THE END-------------"
else
  puts "#{menus[x-1].language}\n#{menus[x-1].content}"
  print "#{menus[x-1].name}"
  y=gets.chomp
  print "#{menus[x-1].pass}"
  z=gets.chomp
  if (y!=acc||z!=passwd)
    puts "#{menus[x-1].error1}"
    puts "#{menus[x-1].endd}"
  else
    puts "#{menus[x-1].request}"
    money=gets.to_i
    if(money > total_money)
    puts "#{menus[x-1].error2}"
    else
      puts "#{menus[x-1].result1} #{money} #{menus[x-1].unit}"
      puts "#{menus[x-1].result2} #{total_money-money} #{menus[x-1].unit}"
      puts "#{menus[x-1].endd}"
    end
  end
end
