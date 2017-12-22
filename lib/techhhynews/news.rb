class News
  attr_accessor :url, :title, :summary
  @@all = []

  def initialize(title=nil, url=nil, summary=nil)
    @title = title
    @url = url
    @summary = summary
    @@all < self
  end

  def self.scrap
    doc = Nokogiri::HTML(open("https://www.google.com/search?q=technology+news&source=lnms&tbm=nws&sa=X&ved=0ahUKEwjwz9LNqpzYAhUk8IMKHTI-A5gQ_AUICigB&biw=1536&bih=759"))
    binding.pry
  end
end
