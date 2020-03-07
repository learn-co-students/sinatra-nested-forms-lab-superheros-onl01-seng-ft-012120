class Hero

    attr_accessor :name, :power, :bio

    HEROES = [] 

    def initialize(member)
        @name = member[:name]
        @power = member[:power]
        @bio = member[:bio]
        HEROES << self 
        self
    end
end 