#!/usr/bin/ruby
# encoding: utf-8

start_pos = ARGV[0]
end_pos = ARGV[1]
except = ARGV[2]
possibleChars = "abcdefghijklmnopqrstuvwxyzáéíóúãõâêôàç"

possibleChars.each_char { |letter| 
	if ! except.include? letter
		puts start_pos + "\t" + end_pos + "\t" + letter + "\t"  + letter 
	end
}
 
puts start_pos + "\t" + end_pos + "\teps\teps" 