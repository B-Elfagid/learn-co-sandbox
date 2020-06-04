class Api 
  
 BASE_URL = 'https://api.punkapi.com/v2/beers/?limit=10'
 def self.get_beers
   res = RestClient.get(BASE_URL)
   data = JSON.parse(res.body)
   data.each do |beers|
  name = beers["name"]
  id = beers["id"]
  Beer.new(name, id)
  end
end 
end 