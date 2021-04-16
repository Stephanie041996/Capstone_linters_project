require 'colorize'

module StyleLinter
  def comment_check(line, number)
    return unless line.include?('/*')

    @errors << "#{'WARNING'.yellow}  comments have been detected on the line number #{number} please remove all comments\n"
  end

  def space_check(line, number)
    return unless line =~ /\A\w/ && !line.start_with?('  ')

    @errors << "#{'ERROR'.red}  two empty space need on the line number #{number}\n "
  end

  def px_check(line, number)
    return unless line.include?('px')

    @errors << "#{'WARNING'.yellow}  Use REM or EM for measurement units instead of px on the line number #{number}\n"
  end

  def start_space_check(line, number)
    @errors << "#{'ERROR'.red}  remove empty space at start of line number #{number}\n " if line.start_with?(' ') && (line.include?('.') || line.include?('}'))
  end

  def colon_space_check(line, number)
    return unless line.include?(':')

    sec = line.split(':')[1]
    @errors << "#{'ERROR'.red}  Space must be after the colon on the line number #{number}\n" if sec[0] != ' '
  end

  def bracket_check(line, number)
    @errors << "#{'ERROR'.red}  line number #{number} should end with { please put any text or closing } on a seperate line\n" if line.include?('{') && !line.end_with?('{')
  end

  def bracket_check_end(line, number)
    @errors << "#{'ERROR'.red}  line number #{number} should end and start with }\n" if line.include?('}') && !line.end_with?('}') && !line.start_with?('}')
  end

  def empty_space_check(line, number)
    stripped = line.delete("\n")
    @errors << "#{'ERROR'.red}  Tailing spaces have been detected on the line number #{number}\n" if stripped.end_with?(' ')
  end

  def ending_check(line, number)
    if line.include?(':') && !line.include?(';')
      @errors << "#{'WARNING'.yellow}  no closing ; detected on the line number #{number}\n"
    elsif line.include?(';') && !line.include?(':')
      @errors << "#{'WARNING'.yellow}  missing : detected on the line number #{number}\n"
    end
  end
end
