require_relative 'person'
require_relative 'bicycle'
require_relative 'place'

intro_test = <<-"TEXT"
初めまして。RubyCityにようこそ。この作品では街を歩くことが出来ます。
あなたの名前を教えてください
TEXT
puts intro_test
player = Person.new(gets.chomp)
player.get_money(1000)
places = []
ochanomizu = Place.new(:ochanomizu)
tokyo = Place.new(:tokyo)
akihabara = Place.new(:akihabara)
places << ochanomizu
places << tokyo
places << akihabara
player.at = ochanomizu

puts <<-TEXT

--------------------------------------------------------------------------------
#{player.name}さんこんにちは。この街に来てくれたことを祝して,これをあげましょう。

#{player.name}は1000円を手に入れた
--------------------------------------------------------------------------------

それでは街に繰り出してみましょう
今あなたは#{player.at.name}にいます。
場所の説明:
#{player.at.explain}
どこに移動しますか？
TEXT

tmp = gets.chomp.to_sym
proc = Proc.new { :not_found }
player.at = places.find(proc) {|place| place.name == tmp}

# 例外処理を後で書く
puts "#{player.at.name}に移動しました。"
