#!/usr/bin/env ruby
require_relative '../lib/linter'
puts 'Please Enter the file path: for example ../assets/style.css'
stylint = Stylint.new(gets.chomp.to_s)

puts stylint.check
