class Beer
 attr_reader :name, :id, :tagline, :description, :abv, :food_pairing
 
 @@all = []
 def initialize(name, id, tagline, description, abv, food_pairing)
   @name = name
   @id = id
   @tagline = tagline
   @description = description 
   @abv = abv
   @food_pairing = food_pairing
   @@all << self 
 end 
 
 
 def self.all
   @@all
 end 
 
 def self.beer_types
 Beer.all.select {|b| puts "#{b.id}.) #{b.name}"}
 end 
 

end 