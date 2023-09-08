class Pangram
  def self.pangram?(sentence)
    sentence.downcase!
    ('a'..'z').all? { |letter| sentence.include?(letter) }
  end
end
