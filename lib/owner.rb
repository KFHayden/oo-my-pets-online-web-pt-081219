class Owner
  
  @@all = []
  @@count = 0
  
  attr_accessor :cats
  attr_reader :name, :species, :say_species
  
  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    @say_species = "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
end