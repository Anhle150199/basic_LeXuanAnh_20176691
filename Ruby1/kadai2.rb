puts "第　１～１０大会のオリンピック一覧"
puts "--------------------------------"
olympic = [
{year: "1896",content: "アテネ大会" } ,
{year: "1900",content: "パリ大会" } ,
{year: "1904",content: "セントルイス大会" } ,
{year: "1908",content: "ロンドン大会" } ,
{year: "1912",content: "ストックホルム大会" } ,
{year: "1916",content: "ベルリン大会" } ,
{year: "1920",content: "アントワープ大会" } ,
{year: "1924",content: "パリ大会" } ,
{year: "1928",content: "アムステルダム大会大会" } ,
{year: "1932",content: "ロサンゼルス大会" } ,
]
olympic.each do |olympic|
  puts "#{olympic[:year]}年には#{olympic[:content]}大会"
end
