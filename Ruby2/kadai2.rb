class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    "#{name} : #{price}vnd"
  end
end
menu1 = Menu.new(name: "Pho", price: 30000)
menu2 = Menu.new(name: "Bun cha", price: 40000)
menu3 = Menu.new(name: "banh mi", price: 20000)
menus = [menu1, menu2, menu3]
menus.each do |x|
  puts x.info
end