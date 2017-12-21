class Techhhynews::News
  attr_accessor :url, :title, :summary
  @@all = []

  def initialize(title=nil, url=nil, summary=nil)
    @title = title
    @url = url
    @summary = summary
  end

  def self.scrap_news
  end

  def doc
  end
end
