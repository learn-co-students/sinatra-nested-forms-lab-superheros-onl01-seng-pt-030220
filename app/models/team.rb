class Team

  @@all=[]
   attr_accessor :name,:motto

   def initialize(params)
     binding.pry
     @name= params[:name]
     @motto = params[:motto]
     @@all << self
   end

   def self.all
     @@all
   end
end
