class Api 
 
BASE_URL = "https://api.punkapi.com/v2/beers/"
def self.get_beers
  res = RestClient.get(BASE_URL)
  data = JSON.parse(res.body)
  data.each do |beers|
    name = beers["name"]
    id = beers["id"]
    tagline = beers["tagline"]
    description = beers["description"]
    abv = beers["abv"]
    food_pairing = beers["food_pairing"]
   Beer.new(name, id, tagline, description, abv, food_pairing)
  end 

end 

#def self.get_beer_details(beer_object)
 #res = RestClient.get("#{BASE_URL}/#{beer_object}")
 #data = JSON.parse(res.body)

def self.get_beer_details(beer_object)
end 

end 






 
