class News
  attr_accessor :author, :title, :summary
  @@all = []

  def initialize(title=nil, who=nil, summary=nil)
    @title = title
    @who = who
    @summary = summary
  end

  def self.all
    @@all
  end

  def self.scrap
    doc = Nokogiri::HTML(open("https://www.google.com/search?q=technology+news&source=lnms&tbm=nws&sa=X&ved=0ahUKEwjwz9LNqpzYAhUk8IMKHTI-A5gQ_AUICigB&biw=1536&bih=759"))
    page = doc.css("#search")
    page.each do |story|
    search_title=story.css("tr").css("a").text
    search_who=story.css("tr").css("span").text
    search_summary=story.css("tr").css(".st").text
    self.all << {title: search_title, who: search_who, summary: search_summary}
    binding.pry

    end
  end


end
