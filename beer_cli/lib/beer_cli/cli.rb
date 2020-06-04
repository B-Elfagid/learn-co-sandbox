class Cli
  
  def run 
    welcome 
    Api.get_beers
    main
  end 
  
  def welcome
    puts "Welcome to explore about beer types!"
  
  end 
  
  def main 
    print_all
  end
  
  def print_all
    Beer.all.each {|b| puts "#{b.id}.) #{b.name}"}
  end 
  
end 