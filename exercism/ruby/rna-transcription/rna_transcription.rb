class Complement
  DNA_TO_RNA = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
  def self.of_dna(dna)
    begin
      rna = dna.chars.map{ |c| DNA_TO_RNA.fetch(c) }.join
    rescue KeyError
      return ''
    end
  end
end

module BookKeeping
  VERSION = 4
end
