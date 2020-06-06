class Team 

    @@TEAMS = []

    def self.all 
        @@TEAMS 

    end 

    def self.clear 
        @@TEAMS.clear
    end

    attr_accessor :name, :motto

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @@TEAMS << self
    end 
    
end 