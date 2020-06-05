class Cli
  
  def run 
    puts "Welcome to explore about Beer types!"
    Api.get_beers
    main 
  end 
  
  def main
    puts "Would you like to see informations about beer types? if so, type 'beer'."

    puts "Type 'exit' to exit."
    input = gets.strip.downcase
    
  case input
    when 'beer'
    show_beer_types
    index = prompt_beer_selection
    beer = get_beer(index)
    print_beer_details(beer)
    when 'exit', 'quit'
    goodbye
    else
    puts "Invalid selection, please try again"
    main
    end 
    end 

  def show_beer_types
    puts "here are the beer types"
    Beer.display_beer_types 
  end
  
  def prompt_beer_selection
    puts "\nSelect a number for the beer you want more information about."
    input = gets.strip.to_i - 1
    until input >= 0 && input <= Beer.all.size 
      puts "Sorry, please enter a number between 1 and #{Beer.all.size}"
      input = gets.strip.to_i - 1
    end 
   input
  end
  
  def get_beer(index)
    Beer.all[index]
  end 
  
    def print_beer_details(beer)
    puts "name: " + beer.name
    puts "tagline: " + beer.tagline 
    puts "description: " + beer.description
    #puts "abv: " + beer.abv 
    puts "food_pairing: " + beer.food_pairing.join(" ")
  end 
 
  def goodbye
    puts "Thank you for exploring beer types, Goodbye!"
  end 
end   



  

