#!/usr/bin/env ruby
puts ARGV[0].scan(/(?<=from:)[+\w]+/).join + ',' \
  + ARGV[0].scan(/(?<=to:)[+\w]+/).join + ',' \
  + ARGV[0].scan(/(?<=flags:)[-:0-9]+/).join
