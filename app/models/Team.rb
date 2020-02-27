class Team
  attr_accessor :name, :motto

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
  end

  def members
    SuperHero.all.select do |hero|
      hero.team == self
    end
  end

end
