#!/usr/bin/ruby
# encoding: utf-8

word = ARGV[0].to_s
a = 0
word.each_char {|l| 
	puts a.to_s + "\t" + (a + 1).to_s + "\t" + l + "\t" + l
	a = a + 1
}
puts a
