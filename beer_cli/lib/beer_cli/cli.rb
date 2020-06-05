class Cli
  
  def run 
    print_welcome
    Api.get_beers
    main 
  end 
  
  def main
    print_all
    print_selection_prompt
   id = valid_id?(prompt_selection)
   get_beers_details(id)
  end 
  
  def print_all
    Beer.all.each {|b| puts "#{b.id}.) #{b.name}" }
  end 
  
  def print_selection_prompt
    puts "Please select Beer by number for more information"
  end
  
   def print_welcome 
    puts "Welcome to explore about Beer types!"
  end 
  
  def print_error
    puts "Invalid Selection, please try again"
  end 
  
  def prompt_selection 
    gets.chomp
  end 
  
  def valid_id?(id)
   id = id.to_i
  if id < 1 || id > Beer.all.size
    print_error
    sleep 1
   main 
end 
id
end 

def get_beers_details(id)
  Api.get_details_by_id(id)
end 
  
end 