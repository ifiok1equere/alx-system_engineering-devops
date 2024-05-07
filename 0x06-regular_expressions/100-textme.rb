#!/usr/bin/env ruby
puts ARGV[0].scan(/m:(\+?\w+).+:(\+?\d+).+:(-\d:\d:-\d:-?\d:-\d)/).join(',')
