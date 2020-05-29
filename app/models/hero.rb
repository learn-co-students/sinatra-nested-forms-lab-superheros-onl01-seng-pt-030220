class Hero
attr_accessor :name, :power, :biography

@@all = []

def self.all
  @@all
end

def initialize(params)
@name = params[:name]
@power = params[:power]
@biography = params[:biography]
@@all << self
end

end
