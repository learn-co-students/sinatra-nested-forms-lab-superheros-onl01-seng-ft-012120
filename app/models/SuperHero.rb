class SuperHero
  attr_accessor :name, :power, :bio, :team
  @@all = []

  def initialize(args, team)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:biography]
    @team = team
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
