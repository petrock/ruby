module BookKeeping
  VERSION = 5
end
class Gigasecond
  GIGASECOND = 1e9
  def self.from(startMoment)
    startMoment + 100_000_0000
  end
end
