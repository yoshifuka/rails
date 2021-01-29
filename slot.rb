puts "残りコイン数100"
puts "ポイント0"
coin = 100
point = 0

loop do
  
  puts "何コイン入れますか？"
  puts "0(10コイン) 1(30コイン) 2(50コイン) 3(やめとく)"
  puts "--------------"

  num1 = rand(1..9)
  num2 = rand(1..9)
  num3 = rand(1..9)
  num4 = rand(1..9)
  num5 = rand(1..9)
  num6 = rand(1..9)
  num7 = rand(1..9)
  num8 = rand(1..9)
  num9 = rand(1..9)
  
  coins = [10, 30 ,50]  
  bet_coin = gets.to_i
  
  puts "#{coins[bet_coin]}コイン入れました"
  puts "--------------"
  puts "エンターを3回押しましょう"
  puts = gets
  puts "--------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  puts = gets
  puts "--------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  puts = gets
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  puts "--------------"
  
  if (num2 == 7) && (num5 == 7) && (num8 == 7) 
    puts "大当たり"
    puts "100コインゲット"
    puts "100ポイントゲット"
    puts "--------------"
    coin += 100 - coins[bet_coin]
    point += 100
    puts "残りコイン数#{coin}"
    puts "ポイント#{point}"
  else
    puts "残念"
    coin -= coins[bet_coin]
    puts "残りコイン数#{coin}"
    puts "ポイント#{point}"
  end
  
  if coin < 0
    puts "コインが足りません"
    puts "終了します"
    break
  end
  
end

