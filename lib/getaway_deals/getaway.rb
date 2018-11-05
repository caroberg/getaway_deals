class GetawayDeals::Getaway
  attr_accessor :name, :price, :rating, :url
  
  def self.all 
    self.scrape_getaways
  end
  
  def scrape_getaways 
    deals = [] 
    deals << self.scrape_groupon 
    deals 
  end 
  
  def self.scrape_groupon 
    doc = Nokogiri::HTML(open("https://www.groupon.com/getaways"))
  end
end