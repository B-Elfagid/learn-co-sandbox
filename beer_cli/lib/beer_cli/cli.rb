class Cli
  
  def run 
    puts "Welcome to explore about Beer types!"
    Api.get_beers
    main 
  end 
  
  def main
    puts "Would you like to see informations about beer types? if so, type 'beer'."
    puts "Do you want to see more infomation about beer? if so, type 'moreinfo'."
    puts "Type 'exit' to exit."
    input = gets.strip.downcase
    if input == 'beer'
    elsif input == 'moreinfo'
    elsif input == 'exit' || input == 'quit'
  else
    "Invalid selection, please try again"
  end 

  
  case input
  when 'beer'
    show_beer_types
  when 'moreinfo'
    show_more_info
  when 'exit', 'quit'
    goodbye
else
  puts "Invalid selection, please try again"
  main
end 
end 


def show_beer_types
  puts "Here are the beer types"
  Beer.beer_types.each do |beers|
end 

puts "\nSelect a number for the beer you want more information about."
input = gets.strip.to_i - 1
until input >= 0 && input <= Beer.all.size 
puts "Sorry, please enter a number between 1 and #{Beer.all.size}"
input = gets.strip.to_i - 1
end 
puts "valid input"


beers_object = Beer.beer_types(input)
show_beer_details(beer_object)
end

def get_beers_details(beer_object)
  Api.get_beers_details(beer_object)
  end 

def goodbye
  puts "Thank you for exploring beer types, Goodbye!"
end 
end   


  