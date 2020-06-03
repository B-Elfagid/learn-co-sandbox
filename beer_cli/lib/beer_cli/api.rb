class Api 
  
 BASE_URL = 'https://api.punkapi.com/v2/beers/?limit=10'
 def self.get_beers
   res = RestClient.get(BASE_URL)
   data = JSON.parse(res.body)
   data.each do |beers|
  puts beers["name"]
  puts beers["image_url"]
  end
end 
   
end 