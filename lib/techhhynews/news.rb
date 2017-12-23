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
    page = doc.css("div.g, div._cy")
    page.each do |story|
    search_title=story.css("div").css("h3").children.children.text
    search_who=story.css("div.slp").children.children.text.split(" ").first
    search_summary=story.css("div.st").children.text
    binding.pry
    self.all << {title: search_title, who: search_who, summary: search_summary}
    end
  end


end
