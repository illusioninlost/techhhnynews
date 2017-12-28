class News
  attr_accessor :title, :time, :summary
  @@all = []

  def initialize(title=nil, time=nil, summary=nil)
    @title = title
    @time = time
    @summary = summary
  end

  def self.all
    @@all
  end

  def self.scrap
    doc = Nokogiri::HTML(open("https://www.reuters.com/news/technology"))
    page = doc.css(".ImageStoryTemplate_image-story-container_2baSf")
    page.each do |story|
    search_title=story.css("a").text
    search_time=story.css("span").text
    search_summary=story.css("div p").text
    @@all << News.new(search_title, search_time, search_summary)
    end
  end

    def self.list
      self.all.each_with_index do |story,index|
        puts (index+1).to_s + ". " + story.title + " - " + story.time
      end
    end

end
