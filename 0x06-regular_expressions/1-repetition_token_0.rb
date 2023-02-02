#!/usr/bin/env ruby
# A regular expression that is matches a given pattern
require 'oniguruma'

def match(string)
  regex = Oniguruma::ORegexp.new("^([A-Z][a-z]+){2,}$")
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

