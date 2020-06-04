class Cli
  
  def run 
    print_welcome 
    Api.get_beers
    main
  end 
  
  def print_welcome
    puts "Welcome to explore about Beer types!"
  
  end 
  
  def main 
    print_all
    print_selection_prompt
    id = prompt_selection
    
  end
  
  def print_all
    Beer.all.each {|b| puts "#{b.id}.) #{b.name}"}
  end 
  
  def print_selection_prompt
    puts "Please select a number of your favourite Beer for more information"
  end 
  
  def prompt_selection
    gets.chomp
end 

def valid_id?(id)
  id = id.to_i
  if id < 1 || id > Beer.all.size
    print_error
    main 
end 
id
end 

def print_error 
  puts "Invalid Selection, please try again."
end 

end 