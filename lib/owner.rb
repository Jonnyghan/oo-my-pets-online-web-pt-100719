class Owner
  attr_accessor :pets 
  attr_reader :name, :species
  
  @@all = []
  
  @all_pets =[]
  
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
    @all_pets << owners_cats
    owners_cats
  end
  
  def dogs 
    owners_dogs = []
    Dog.all.collect do 
      |dog| if dog.owner == self
      owners_dogs << dog
      end
    end
    @all_pets << owners_dogs
    owners_dogs
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self, mood = "nervous")
  end
    
  def buy_dog(name)
    dog = Dog.new(name, self, mood = "nervous")
  end
  
  def walk_dogs
    self.dogs.each do |dog| 
      dog.mood= "happy"
    end
  end 
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    
  end
  
  
  
end