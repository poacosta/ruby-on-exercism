class Complement
  def self.of_dna(dna)
    dna.tr('CGTA', 'GCAU')
  end
end
