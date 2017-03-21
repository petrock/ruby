module BookKeeping
  VERSION = 5
end
class Gigasecond
  def self.from(birthday)
    birthday + 100_000_0000
  end
end
