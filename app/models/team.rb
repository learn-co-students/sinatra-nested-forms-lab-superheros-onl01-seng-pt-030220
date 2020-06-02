class Team
    
    TEAMS = []

    def self.all
        TEAMS
    end

    attr_accessor :name, :motto

    def initialize(args)
        @name = args[:name]
        @motto = args[:motto]
        TEAMS << self
    end

end