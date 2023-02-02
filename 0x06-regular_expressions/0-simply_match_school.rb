#!/usr/bin/env ruby
# A regular expression that is simply matching School

require 'oniguruma'

def match(string)
  regex = Oniguruma::ORegexp.new("School")
  regex.match(string)
end

if __FILE__ == $0
  string = ARGV[0]
  if match(string)
    puts "Matched"
  else
    puts "Not matched"
  end
end
