require 'pry'
class Superhero

  attr_accessor :name,:power,:bio
  @@all=[]

  def initialize(arg:)
    @name,@power,@bio = arg[:name],arg[:power],arg[:bio]
    @@all << self
  end


  def self.all
    @@all
  end
end
