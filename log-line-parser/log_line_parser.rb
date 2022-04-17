class LogLineParser
  attr_reader :items

  def initialize(line)
    @line = line
    @items = @line.split(':').map!(&:strip)
  end

  def message
    @items.last
  end

  def log_level
    @items.first.downcase.delete '[]'
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
