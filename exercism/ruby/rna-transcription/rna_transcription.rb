class Complement
  def self.of_dna(dna_strand)
    dna = dna_strand.split('')
    mapping = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    rna_strand = ''
    dna.each do |nucleotide|
      unless mapping.has_key?(nucleotide)
        rna_strand = ''
        break
      end
      rna_nucleotide = mapping.fetch(nucleotide)
      rna_strand << rna_nucleotide
    end
    return rna_strand
  end
end
