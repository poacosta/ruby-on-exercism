class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(bands)
    number = ''
    bands.map { |c| number += COLORS.index(c).to_s if number.length < 2 }
    number.to_i
  end
end
