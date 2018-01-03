class Techhhynews::News
  attr_accessor :title, :time, :summary
  @@all = []

  def initialize(title=nil, time=nil, summary=nil)
    @title = title
    @time = time
    @summary = summary
    @@all << self
  end

  def self.all
    @@all
  end


    def self.list
      self.all.each.with_index(1) do |story,index|
        puts (index).to_s + ". " + story.title + " - " + story.time
      end
    end

    def self.search(num)
      search_num = num.to_i - 1
      puts "___________________________________________________________________"
      puts
      puts @@all[search_num].title
      puts
      puts @@all[search_num].summary
      puts
      puts "___________________________________________________________________"
      puts
      puts
    end

end
