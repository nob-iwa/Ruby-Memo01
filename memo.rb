require "csv"

puts "1(新規でメモを作成)2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
  
  puts "拡張子を除いたファイルを入力してください"
  
  title = gets.to_s
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを押します"

  CSV.open("#{title}.csv", "w") do |csv|
   memo = readlines(chomp: true)
   csv << memo
  end

elsif memo_type == 2
 
 puts "拡張子を除いたファイルを入力してください"
  
  title = gets.to_s
  
  puts "編集したい内容を記入してください"
  puts "完了したらCtrl + Dを押します"

  CSV.open("#{title}.csv", "a") do |csv|
   memo = readlines(chomp: true)
   csv << memo
  end
 
else 
 puts "1または2を入力してください"
end