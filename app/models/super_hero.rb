class Hero 

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  attr_reader :name, :power, :biography

  def initialize(params)
    @name, @power, @biography = params[:name], params[:power], params[:biography]
    @@all << self
  end
end