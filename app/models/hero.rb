class Hero
    
    HEROS = []

    def self.all
        HEROS
    end

    attr_accessor :name, :power, :bio

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @bio = args[:bio]
        HEROS << self
    end
    
end