class Isogram
  def self.isogram?(str)
    str.downcase!
    str.chars.each { |e| return false if e != '-' && e != ' ' && str.count(e) > 1 }
    true
  end
end
