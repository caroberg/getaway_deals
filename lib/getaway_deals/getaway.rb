class GetawayDeals::Getaway
  attr_accessor :location, :price, :getaway_url, :rating, :description, :buy
  @@all = []
  
  def initialize(getaway_hash)
    getaway_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self 
  end 
  
  def self.all 
    self.scrape_getaways
  end
  
   def self.scrape_getaways 
    page = Nokogiri::HTML(open("https://www.groupon.com/getaways"))
    groupon_getaways = [] 
    
     page.css(".card-ui").each do |getaway| 
        location = getaway.css(".cui-udc-title-with-subtitle").text.gsub("\n", "").strip
        price = getaway.css(".cui-price-discount").text.gsub("From ", "").gsub("/nt", "")
        getaway_url = getaway.css("a").attribute("href").value 
        
        getaway_info = {:location => location, 
                        :price => price,
                        :getaway_url => getaway_url} 
        groupon_getaways << getaway_info 
      end 
    groupon_getaways 
  end 

end