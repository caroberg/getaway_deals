class GetawayDeals::CLI 
  
  def call 
    puts "Today's Getaway Deals:"
    list_deals
    menu
    goodbye
  end
  
  def list_deals 
    #HereDoc with squiggly...
    puts <<-DOC.gsub /^\s*/, ''
    1. Deal One - price - still available!
    2. Deal Two - price - still available!
    3. Etc
    DOC
  end 
  
  def menu 
    input = nil 
    while input != "exit"
     puts "Enter the number of the deal you'd like more info on or type 'list' to see the deals again or type 'exit':"
    input = gets.strip.downcase 
      case input 
      when "1"
        puts "More info on 1!"
      when "2" 
        puts "More info on 2!"
      when "list"
        list_deals
      else 
        puts "Not sure what you want. Please type 'list' or 'exit'."
      end
    end
  end
  
  def goodbye 
    puts "Check back in tomorrow for more travel inspiration!"
  end
  
end