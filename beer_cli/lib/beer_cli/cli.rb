class Cli
  
  def run 
    puts "************Welcome to explore about Beer types!*************".bold.blue
    puts " "
    Api.get_beers
    main
    puts " "
    puts " "
    second_main
  end 
  
  def main
    puts " => Would you like to see informations about beer types? if so, type 'beer'."
    puts " => Type 'exit' to exit."
    puts " "
    input = gets.strip.downcase
    
    case input
      when 'beer'
        show_beer_types
        index = prompt_beer_selection
        beer = get_beer(index)
        print_beer_details(beer)
      when 'exit', 'quit'
        goodbye
      when 'search'
        puts "Which letter would you like to find for beer info: "
        letter = gets.strip.upcase
        Beer.select_all_beer_starting_with(letter)
        else
        puts "Invalid selection, please try again"
        main
      end 
    end 

    def show_beer_types
      puts "*****Here are the beer types*****".bold.blue
      Cli.display_beer_types 
    end
    
    def self.display_beer_types
      Beer.all.select {|b| puts "#{b.id}.) #{b.name}"}
    end 
    

    def prompt_beer_selection
    puts "\n=>Select a number for the beer you want more information about."
    input = gets.strip.to_i - 1
    until input >= 0 && input < Beer.all.size 
      puts "Sorry, please enter a number between 1 and #{Beer.all.size}"
      input = gets.strip.to_i - 1
      end 
      input
      end
  
     def get_beer(index)
     Beer.all[index]
     end 
  
    def print_beer_details(beer)
    puts "Name: ".bold.blue + beer.name
    puts "Tagline: ".bold.blue + beer.tagline 
    puts "Description: ".bold.blue + beer.description
    #puts "abv: " + beer.abv 
    puts "Food_pairing: ".bold.blue + beer.food_pairing.join(" ")
    end 
    
  
 def goodbye
    puts "Goodbye!".bold.blue
    exit
  end 

  def second_main
  puts " "
  puts "********************************************************"  
  puts "If you would you like to continue? Type 'Y'".bold.blue
  puts "If you would you like to exit? Type 'E'".bold.blue
  puts "********************************************************" 
  input = gets.strip.upcase
  if input == "Y" 
    main
    second_main
  elsif input == "E"
    puts "Thank you for exploring beer types, Goodbye!".bold.blue
  else 
    puts "Sorry I couldn't undertand that command".bold.red
    second_main
  end
end 
end   



  

