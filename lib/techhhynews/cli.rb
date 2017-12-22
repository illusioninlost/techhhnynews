class Techhhynews::CLI

  def call
    puts
    puts "----------Techhhynews from Google----------"
    puts
    #list
    puts
    puts "Enter the number(1-10) you would like to know the story more about.\nEnter 'exit' to exit."
    puts
    input = ""
    while input != "exit"
      input=gets.strip
      if input.to_i >= 1 && input.to_i <=10
      #get title,summary,and url from News
      #print summary
      News.scrap
        puts "NEWS"
      elsif input == "exit"
        puts
      else
        puts "Please enter 1-10 for a summary and link to the newsfeed article."
      end
    end
    puts "Thank you. Please read again."
  end

end
