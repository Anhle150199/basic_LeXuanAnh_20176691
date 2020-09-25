names = ["Suzuki","Kato","Tanaka"]
puts "名前は#{names[0]}です"
puts "名前は#{names[1]}です"
puts "名前は#{names[2]}です"
puts "----------------------"
#配列の要素の取り出し
array = ["a", "b", "c"]
array[1]
#リスト名[インデックス]
#配列の最後に要素を追加する方法
array = ["a", "b", "c"]
#使用していないインデックスを指定して代入
array[3] = "d" #["a", "b", "c", “d"]
#pushメソッドを使用
array.push("e")
#["a", "b", "c", "d", "e"]
#<<メソッドを使用
array << "f"
#["a", "b", "c", "d", "e", "f"]
puts array
puts "----------------------"
#要素の挿入
array = ["a", "b", "c"]
array.insert(1, "zz" )
puts array
puts "----------------------"

