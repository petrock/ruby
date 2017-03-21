class Hamming
  def self.compute(strand1, strand2)
    dna1 = strand1.chars
    dna2 = strand2.chars

    unless strand1.length == strand2.length
      raise ArgumentError.new('Input strings of different length')
    end
    
    dna1.select{ |nucleotide| nucleotide != dna2.shift }.count

  end
end
