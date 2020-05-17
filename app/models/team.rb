class Team

  @@all=[]
   attr_accessor :name,:motto

   def initialize(arg:)
     @name= arg[:name]
     @motto = arg[:motto]
     @@all << self
   end

   def self.all
     @@all
   end
end
