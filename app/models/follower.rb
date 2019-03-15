class Follower
  attr_accessor :name, :age, :life_motto, :slogan

  FOLLOWER = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    FOLLOWER << self
  end

  def join_cult(cult)
    bloodoath = BloodOath.(cult, self)
  end

  def self.all
    FOLLOWER
  end

  def self.of_a_certain_age(age)
    FOLLOWER.select do |follower|
      follower.age >= age
    end
  end
end
