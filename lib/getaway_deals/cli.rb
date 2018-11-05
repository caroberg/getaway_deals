class GetawayDeals::CLI 
  
  def call 
    getaway_packages
    menu
    goodbye
  end
  
  def getaway_packages 
    puts "Today's Getaway Specials:"
    @getaways = GetawayDeals::Getaway.all
    @getaways.each.with_index(1) do |getaway, i| 
      puts "#{i}. #{getaway.name} - #{getaway.price} - #{getaway.rating}" 
    end
  end 
  
  def menu 
    input = nil 
    while input != "exit"
     puts "Enter the number of the deal you'd like more info on or type 'getaway' to see the deals again or type 'exit':"
    input = gets.strip.downcase 
      
      if input.to_i > 0 
        the_getaway = @getaways[input.to_i-1]
        puts "#{the_getaway.name} - #{the_getaway.price} - #{the_getaway.rating}"
      elsif "getaway"
        getaway_packages
      else 
        puts "Not sure what you want. Please type 'list' or 'exit'."
      end
    end
  end
  
  def goodbye 
    puts "Check back in tomorrow for more travel inspiration!"
  end
  
end