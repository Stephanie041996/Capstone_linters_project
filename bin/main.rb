#!/usr/bin/env ruby
require_relative '../lib/linter'

stylint = Stylint.new('../bin/style.css')
puts stylint.check
# hello
