class Beer
  attr_reader :name, :id
  
  @@all = []
  
  def initialize(name, id)
    @name = name
    @id = id
    @@all << self
  end 
  
  def self.all
    @@all
    
end 

end 