class Raindrops
  FACTORS_STRING = {3 => 'Pling', 5 => 'Plang', 7 =>'Plong'}
  def self.convert(number)
    raindrop = FACTORS_STRING.select{ |factor, string| number % factor == 0 }.values.join
    raindrop == '' ? number.to_s : raindrop
  end
end

module BookKeeping
  VERSION = 3
end
