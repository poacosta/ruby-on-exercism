module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    case city
    when 'Hamburg' then :HAMB
    when 'Rome' then :ROME
    when 'Kiel' then :KIEL
    else raise "Unknown city: #{city}"
    end
  end

  def self.get_terminal(ship_identifier)
    case ship_identifier
    when /^OIL/ then :A
    when /^GAS/ then :A
    when /^CAR/ then :B
    when /^CLO/ then :B
    else raise "Unknown ship identifier: #{ship_identifier}"
    end
  end
end
