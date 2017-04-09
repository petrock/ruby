module BookKeeping
  VERSION = 4
end

class Pangram
  ALPHABBET = ('a'..'z')
  def self.pangram?(phrase)
    phrase = phrase.downcase
    ALPHABBET.select {|letter| phrase.include? letter}.length  == ALPHABBET.to_a.length
  end
end
