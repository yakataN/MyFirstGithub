require_relative 'person'
require_relative 'bicycle'

intro_test = <<-"TEXT"
初めまして。RubyCityにようこそ。この作品では街を歩くことが出来ます。
あなたの名前を教えてください
TEXT
puts intro_test
player = Person.new(gets.chomp)
player.get_money(1000)
bicycle = Bicycle.new
player.own(bicycle)

puts <<-TEXT
#{player.name}さんこんにちは。この街に来てくれたことを祝してこれをあげましょう。
#{player.name}は1000円を手に入れた
#{player.name}は自転車を手に入れた
それでは街に繰り出してみましょう
今あなたは#{player.at}にいます。
TEXT
