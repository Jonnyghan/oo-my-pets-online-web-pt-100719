
class Cat
  attr_accessor 
  attr_reader :owner, :name, :mood
  
  @@all =[]
  
  def initialize(name,owner, mood = "nervous")
    @name = name
    @name.freeze
    @owner = owner
    @mood = mood
  end
  
  def owner=(owner)
    @owner = owner
  end
  
  def mood=(mood)
    @mood = mood
  end
  
  
  
end