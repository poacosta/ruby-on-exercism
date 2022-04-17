class Acronym
  def self.abbreviate(phrase)
    str = ''
    phrase.split(/\W+/).map { |l| str << l[0] }
    str.upcase
  end
end
