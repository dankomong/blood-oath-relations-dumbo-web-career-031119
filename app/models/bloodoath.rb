class BloodOath

  attr_accessor :cult, :follower, :date

  BLOODOATH = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @date = Time.now.strftime("%Y-%d-%m")
    BLOODOATH << self
  end

  def self.all
    BLOODOATH
  end

end
