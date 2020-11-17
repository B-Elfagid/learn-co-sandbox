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
 
# def self.select_beer_starts_with_b
# list_of_beers = self.all.select {|beer| beer.name.start_with?("b")}
# list_of_beers.each { |beer| puts "#{beer.name}" }
# end 
 
  
def self.select_all_beer_starting_with(letter)
list_of_beers = self.all.select {|beer| beer.name.start_with?(letter)}

end 

end



