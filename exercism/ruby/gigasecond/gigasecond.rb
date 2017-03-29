module BookKeeping
  VERSION = 5
end
class Gigasecond
  GIGASECOND = 1e9
  def self.from(startMoment)
    startMoment + GIGASECOND
  end
end
