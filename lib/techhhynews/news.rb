class News
  attr_accessor :author, :title, :summary
  @@all = []

  def initialize(title=nil, who=nil, summary=nil)
    @title = title
    @who = who
    @summary = summary
    @@all << self
  end

  def self.all
    @@all
  end

  def self.scrap
    doc = Nokogiri::HTML(open("https://www.google.com/search?q=technology+news&source=lnms&tbm=nws&sa=X&ved=0ahUKEwjwz9LNqpzYAhUk8IMKHTI-A5gQ_AUICigB&biw=1536&bih=759"))
    page = doc.css("div.NId")
    search_title=page.css("div h3")
    search_who=page.css("div span")
    search_summary=page.css("div div.st")
    binding.pry
    self.all << {title: search_title, who: search_who, summary: search_summary}
  end


end
