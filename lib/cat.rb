
class Cat
  attr_accessor 
  attr_reader :owner, :name
  
  @@all =[]
  
  def initialize(name,owner)
    @name = name
    @name.freeze
    @owner = owner
  end
  
  def owner=(owner)
    @owner = owner
  end
  
  
  
  
  
end