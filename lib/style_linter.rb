# module to store all check methods
module StyleLinter
  def comment_check(line, number)
    return unless line.include?('/*')

    @errors << "comments have been detected on the line number #{number} please remove all comments"
  end

  def space_check(line, number)
    @errors << "two empty space need on the line number #{number} " if line.start_with?('a') && !line.start_with?('  ')
  end

  def start_space_check(line, number)
    @errors << "remove empty space at start of line number #{number} " if line.start_with?(' ') && (line.include?('.') || line.include?('}'))
  end

  def bracket_check(line, number)
    @errors << "line number #{number} should end with {" if line.include?('{') && !line.end_with?('{')
  end

  def bracket_check_end(line, number)
    @errors << "line number #{number} should end and start with }" if line.include?('}') && !line.end_with?('}') && !line.start_with?('}')
  end

  def ending_check(line, number)
    if line.include?(':') && !line.include?(';')
      @errors << "no closing ; detected on the line number #{number}"
    elsif line.include?(';') && !line.include?(':')
      @errors << "missing : detected on the line number #{number}"
    end
  end

  def empty_space_check(line, number)
    stripped = line.delete("\n")
    @errors << "Tailing spaces have been detected on the line number #{number} " if stripped.end_with?(' ')
  end

  def colon_space_check(line, number)
    return unless line.include?(':')

    sec = line.split(':')[1]
    @errors << "Space must be after the colon on the line number #{number} " if sec[0] != ' '
  end

  def px_check(line, number)
    return unless line.include?('px')

    @errors << "Use REM or EM for measurement units instead of px on the line number #{number}"
  end
end
