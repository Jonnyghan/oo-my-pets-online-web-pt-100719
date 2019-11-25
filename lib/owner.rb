class Owner
  attr_accessor :pets 
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    #@species = species
    @@all << self
  end 
  
  def species(species = "human")
    @species = species
  end
  
  def say_species
     "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    owners_cats = []
    Cat.all.collect do 
      |cat| if cat.owner == self
      owners_cats << cat
      end
    end
    owners_cats
  end
  
  def dogs 
    owners_dogs = []
    Dog.all.collect do 
      |dog| if dog.owner == self
      owners_dogs << dog
      end
    end
    owners_dogs
  end
  
  def buy_cat(name, owner, mood= "nervous")
    cat = Cat.new(name, self, mood)
    
  end
  
  
  
  
  
  
end