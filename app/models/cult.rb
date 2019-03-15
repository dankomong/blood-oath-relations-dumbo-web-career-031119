class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  CULT = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan =  slogan
    CULT << self
  end

  def recruit_follower(follower)
    bloodoath = BloodOath.new(self, follower)
  end

  def cult_population
    new_arr = BloodOath.all.select do |oath|
      oath.cult == self
    end
    new_arr.length
  end

  def self.all
    CULT
  end

  def self.find_by_name(name)
    CULT.select do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    CULT.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    CULT.select do |cult|
      cult.year == year
    end
  end
end
