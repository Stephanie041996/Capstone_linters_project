require 'colorize'
require_relative('../lib/style_linter')

class Stylint
  include StyleLinter

  def initialize(file_path)
    @file_path = file_path
    @errors = []
  end

  def check
    number = 0
    File.readlines(@file_path).each do |line|
      number += 1
      comment_check(line, number)
      ending_check(line, number)
      colon_space_check(line, number)
      empty_space_check(line, number)
      px_check(line, number)
      space_check(line, number)
      start_space_check(line, number)
      bracket_check(line, number)
      bracket_check_end(line, number)
    end
    if @errors.length.zero?
      @errors << 'All checks succefully passed the linter check! No errors detected. '.green
    else
      @errors.sort { |el1, el2| el2 <=> el1 }
    end
  end
end
