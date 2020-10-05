class ATM
  attr_accessor :username
  attr_accessor :password
  attr_accessor :monney
   monneyTest = 0

  accs = [
    {username: "anhle", password: "123", monney: 123456789},
    {username: "le A", password: "123", monney: 10000000},
    {username: "xxx", password: "123", monney: 20000000}
  ]

  def checkAcc
    for i in 0...(accs.length - 1)
      if @username == @@accs[:username] && @password == @@accs[:password]
        @@monneyTest = @@accs[:monney]
        return true
      else
        return false
      end
    end
  end

  def checkMonney
    if @monney <= @@monneyTest && @monney >0
      return true
    else
      return false
    end
  end

  def monneyTotal
    xx = @@monneyTest - @monney
    return xx
  end
end
puts "言語を選んでください
日本語の場合は１を選んでください
英語の場合は２を選んでください
ベトナム語の場合は３を選んでください
-----------------------------------"
getATM = ATM.new
chose = gets.to_i
case chose
when 3
  printf "tài khoản: "
  user = gets.chomp
  getATM.username = user
  printf "mật khẩu: "
  pass = gets.chomp
  getATM.password = pass
  if getATM.checkAcc
    printf "Nhập số tiền bạn muốn rút: "
    monneyInput = gets.to_i
    getATM.monney = monneyInput
    if getATM.checkMonney
      puts "Bạn đã rút tiền thành công. \n Số tiền còn lại trong tài khoản: #{getATM.monneyTotal}"
    else
      puts "Bạn đã nhập sai số tiền. \n Chương trình kết thúc."
    end
  else
    puts "Tài khoản hoặc mật khẩu không đúng. \n Kết thúc chương trình."
  end
when 2
  puts "2222222222"
else#fdfggfgfes
  printf "xxxxxxxxxxx"
end
