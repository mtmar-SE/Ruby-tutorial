#!/usr/bin/env ruby

text = <<-TEXT
名前: 有村架純
電話: 090-3138-1243
電話: 0235-23-4231
電話: 03(1253)3834
電話: 02349-2-3532
住所: 兵庫県西脇市板波町1-3-2
TEXT
puts text.match /\d\d\d-\d\d\d\d-\d\d\d\d/ 
# (最後に\d/g);
# gなし => 最初の一件が見つかったら検索終了。
# gあり => 一致する文字列全て抽出 

puts text.scan /\d{2,5}-\d{1,4}-\d{4}/
# 電話番号を全部検索する[量指定子]

puts text.scan /\d{2,5}[-(]\d{1,4}[-)]\d{4}/
# ()で囲われた数字にも対応

document = <<-DOCUMENTS
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
DOCUMENTS

puts document.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)
# .は任意の一文字 ?は〜が一文字、またはなしを指定している。

html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option><option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>([^<]*)<\/option>/, '\1,\2')

puts replaced