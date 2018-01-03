class Techhhynews::Scraper


    def self.scrap
      doc = Nokogiri::HTML(open("https://www.reuters.com/news/technology"))
      page = doc.css(".ImageStoryTemplate_image-story-container_2baSf")
      page.each do |story|
        search_title=story.css("a").text.gsub("Business News","").gsub("Technology News","").gsub("Fintech","")
        search_time=story.css("span").text
        search_summary=story.css("div p").text
        News.new(search_title, search_time, search_summary)
      end
    end

end
