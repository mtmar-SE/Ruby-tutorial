#!/usr/bin/env ruby

text = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
TEXT
puts text.scan(/(?<=filename=)[^;]+/)
# ファイル名を抜き出す