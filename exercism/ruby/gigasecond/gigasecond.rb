module BookKeeping
  VERSION = 5
end
class Gigasecond
  GIGASECOND = 1e9
  def self.from(moment)
    moment + GIGASECOND
  end
end
