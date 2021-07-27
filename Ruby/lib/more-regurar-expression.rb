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