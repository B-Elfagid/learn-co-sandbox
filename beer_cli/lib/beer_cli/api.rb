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
    food_pairing = ["food_pairing"]
    Beer.new(name, id, tagline, description, abv, food_pairing)
  end 
end 

 
def self.get_beers_details
new_beers = Beer.new(beers['name'], beers['tagline'], beers['description'], beers["abv"], beers['food_pairing'])
end 

#def self.get_details_by_id(id)
 #res = RestClient.get("#{BASE_URL}#{id}")
 #data = JSON.parse(res.body)
end 
 