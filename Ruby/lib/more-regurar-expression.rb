#!/usr/bin/env ruby

text = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
TEXT
puts text.scan(/(?<=filename=)[^;]+/)
# ファイル名を抜き出す

txt = <<-TEXT
John:guitar, George:guitar, Paul:bass, Ringo:drum
Freddie:vocal, Brian:guitar, John:bass, Roger:drum
TEXT
puts txt.scan(/\w+(?=:bass)/)
# bassの直前の一文字以上の文字列を抜き出す

sazae = <<-SAZAE
つぼ焼きにしたサザエはおいしい
日曜日にやってるサザエさんは面白い
SAZAE
#サザエだけを取得。サザエさんは取らない
puts sazae.scan(/サザエ(?!さん)/)

if '123-4567' =~ /\d{3}-\d{4}/
  puts 'マッチしました'
else
  puts 'マッチしませんでした。'
end

data = '私の誕生日は2000年5月30日です。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(data)
puts m