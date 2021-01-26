puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
def janken 
  
  jankens = ["グー", "チョキ","パー"]
  
  user_janken = gets.to_i
  program_janken = rand(3)

  puts "ホイ"
  puts "------------"
  puts "あなた：#{jankens[user_janken]}を出しました"
  puts "相手：#{jankens[program_janken]}を出しました"
 
  if  user_janken == program_janken
      puts "あいこで"
      return true
  elsif user_janken == 0 && program_janken == 1 || user_janken == 1 && program_janken == 2 || user_janken == 2 && program_janken == 0
    puts "あなたの勝ちです。"
  else
    puts "あなたの負けです。"
  end
  
  puts "------------"
  puts "あっち向いてホイ"
  puts "0(上)1(下)2(左)3(右)"
  
  direction = ["上", "下", "左", "右"]
  user_direction = gets.to_i
  program_direction = rand(4)
  
  puts "あなた：#{direction[user_direction]}"
  puts "相手：#{direction[program_direction]}"
  
  if user_direction == program_direction || user_janken == 0 && program_janken == 1 || user_janken == 1 && program_janken == 2 || user_janken == 2 && program_janken == 0
    puts "あなたの勝ちです。"
  else 
    puts "あなたの負けです。"
  end
  
end
  
next_game = true

while next_game do
  next_game = janken
end

  

  
 