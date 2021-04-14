# module to store all check methods
module StyleLinter
  def comment_check(line, number)
    return unless line.include?('/*')

    @errors << "comments have been detected on the line number #{number} please remove all comments"
  end

  def ending_check(line, number)
    if line.include?(':') && !line.include?(';')
      @errors << "no closing ; detected on the line number #{number}"
    elsif line.include?(';') && !line.include?(':')
      @errors << "missing : detected on the line number #{number}"
    end
  end
end
