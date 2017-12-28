class Techhhynews::CLI

  def call
    puts
    puts "----------Techhhynews from Google----------"
    puts
    News.scrap
    News.list
    puts
    puts "Enter the number(1-17) you would like to know the story more about.\nEnter 'exit' to exit."
    puts
    input = ""
    while input != "exit"
      input=gets.strip
      if input.to_i >= 1 && input.to_i <=17
      #get title,summary,and url from News
      #print title
      #print summary

        puts "Enter the number(1-10) for another story"
      elsif input == "exit"
        puts
      else
        puts "Please enter 1-10 for a summary and link to the newsfeed article."
      end
    end
    puts "Thank you. Please read again."
  end

end
