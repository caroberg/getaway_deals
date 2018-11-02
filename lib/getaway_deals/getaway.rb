class GetawayDeals::Getaway
  attr_accessor :name, :price, :rating, :url
  
  def self.all 
    #return a bunch on instances of getaway deals
       #HereDoc with squiggly...
   # puts <<-DOC.gsub /^\s*/, ''
    #1. Deal One - price - still available!
    #2. Deal Two - price - still available!
    #3. Etc
    #DOC
    getaway_1 = self.new 
    getaway_1.name = "Dubai Vacation"
    getaway_1.price = "$999"
    getaway_1.rating = "4/5 Stars" 
    getaway_1.url = "https://www.groupon.com/deals/ga-pacific-holidays-dubai-26"
    
    [getaway_1]
    #return array of data/getaways 
  end
  
end