require "csv"

puts puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    file = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押します"
    text_content = gets.to_s
    
    CSV.open("#{file}.csv", "w") do |csv|
        csv << [text_content]
    end
    
elsif memo_type == 2
    puts "拡張子を除いたファイルを入力してください" 
    file = gets.chomp
    puts "編集したい内容を記入してください"
    puts "完了したらCtrl + Dを押します"
    text_content = gets.to_s
    
    CSV.open("#{file}.csv", "a") do |csv|
        csv << [text_content]
    end
    
else
    puts "1もしくは2の数値を入力してください"
    
end