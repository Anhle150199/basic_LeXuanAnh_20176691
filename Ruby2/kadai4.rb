class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    self.name = name
      self.price = price
  end
  def info
    return "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size;
  end
  def info
    return "#{self.name} #{self.price}vnd (#{self.size} サイズ)"
  end
end
menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "bánh mì", price: 20000)

drink1 = Drink.new(name: "tra", price: 5000, size: "S")
drink2 = Drink.new(name: "tra", price: 10000, size: "S")
# 変数menusを定義して配列を代入してください
menus = [menu1, menu2, menu3, drink1, drink2]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end
puts "--------------"
puts "メニューの番号を選択してください"
chose = gets.to_i
puts "選択されたメニュー: #{menus[chose].name}"
puts "お会計は: #{menus[chose].price}"
