class Menu
 attr_accessor :b
 attr_accessor :i
 attr_accessor :n
 attr_accessor :g
 attr_accessor :0
 def initialize(b:,i:,n:,g:,o:)
 self.b = b
 self.i = i
 self.n = n
 self.g = g
 self.o = o
 end
end
b = (1..15).to_a.sample(5)
i = (16..30).to_a.sample(5)
n = (31..45).to_a.sample(5)
g = (46..60).to_a.sample(5)
o = (61..755).to_a.sample(5)
menu0=Menu.new(b:"B",i:"I",n:"N",g:"G",o:"O")
menu1=Menu.new(b:b[0].to_s,i:i[0].to_s,n:n[0].to_s,g:g[0].to_s,o:o[0].to_s)
menu2=Menu.new(b:b[1].to_s,i:i[1].to_s,n:n[1].to_s,g:g[1].to_s,o:o[1].to_s)
menu3=Menu.new(b:b[2].to_s,i:i[2].to_s,n:"  ",g:g[2].to_s,o:o[2].to_s)
menu4=Menu.new(b:b[3].to_s,i:i[3].to_s,n:n[3].to_s,g:g[3].to_s,o:o[3].to_s)
menu5=Menu.new(b:b[4].to_s,i:i[4].to_s,n:n[4].to_s,g:g[4].to_s,o:o[4].to_s)
menus=[menu0,menu1,menu2,menu3,menu4,menu5]
menus.each do |menu|
 puts "#{menu.b} | ".rjust(5) + "#{menu.i} | ".rjust(5) + "#{menu.n} | ".rjust(5) + "#{menu.g} | ".rjust(5) +"#{menu.o}".rjust(3)
end