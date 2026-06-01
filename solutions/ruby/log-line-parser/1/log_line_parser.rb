class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[1].strip
  end

  def log_level
    log_level = @line.split(':')[0]

    open_bracket_index = log_level.index("[")
    closed_bracket_index = log_level.index("]")

    log_level[open_bracket_index + 1...closed_bracket_index].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
