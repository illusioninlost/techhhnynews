class Techhhynews::CLI

  def call
    puts
    puts "----------Techhhynews from Reuters.com----------"
    puts

    Techhhynews::Scraper.scrap
    News.list

    puts
    puts "Enter the number(1-#{News.all.length}) you would like to know a little more about.\nEnter 'exit' to exit."
    puts

    input = ""
    while input != "exit"
      input=gets.strip
      if input.to_i >= 1 && input.to_i <=News.all.length
          News.search(input)
      #print title
      #print summary
        puts "Enter the number(1-#{News.all.length}) for another story or 'list' for the repeated list or 'exit' for exiting"
      elsif input == "list"
        News.list
        puts
      elsif input == "exit"
        puts
      else
        puts "*Please enter 1-#{News.all.length} for a title and summary to the newsfeed article."
        puts
      end
    end

    puts "Thank you. Please read again."
  end
end
