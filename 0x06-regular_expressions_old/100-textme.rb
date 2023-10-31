#!/usr/bin/env ruby
puts ARGV[0].scan(/\bfrom:(\+?\w+)\D{6}(\+?\d+)\D{9}(-\d:\d:-\d:-?\d:-\d)/).join(',')
