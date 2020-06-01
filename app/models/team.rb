class Team

    @@all = []
  
    def self.all
      @@all
    end
  
    attr_reader :name, :motto
  
    def initialize(params)
      @name, @motto = params[:name], params[:motto]
      @@all << self
    end
  
  
  end 