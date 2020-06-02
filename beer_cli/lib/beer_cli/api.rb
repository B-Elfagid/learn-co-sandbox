class Api 
  
 BASE_URL = 'https://api.punkapi.com/v2/beers/?limit=10'
 def self.get_beers
   res = RestClient.get(BASE_URL)
   binding.pry
 end 
   
end 