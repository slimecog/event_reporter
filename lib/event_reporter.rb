require "./lib/queue"

class EventReporter

puts "Welcome to the Event Reporter! To exit just type exit or quit."

  def initialize
    @quit_repl = false
  end

  def start
    puts "type help to get started"
    prompt = "->"
    until @quit_repl
      print prompt
      input = gets.chomp
      if input == "quit" || input == "exit"
        @quit_repl = true
      elsif input == "help"
        puts "The available commands are \"load\", \"find\", \"count\", \"clear\", \"print\", \"print by\", \"save to\", and \"export html\""
      elsif input == "load"
        puts "Erase any loaded data and parse the specified file. If no filename is given, default to full_event_attendees.csv"
      elsif input == "find"
        puts "Populate the queue with all records matching the criteria for the given attribute"
      elsif input == "count"
        puts "Output how many records are in the current queue"
      elsif input == "clear"
        puts "Empty the queue"
      elsif input == "print"
        puts "Print out a tab-delimited data table with a header row"
      elsif input == "print by"
        puts "Print the data table sorted by the specified attribute like zipcode"
      elsif input == "save to"
        puts "Export the current queue to the specified filename as a CSV. The file should should include data and headers for last name, first name, email, zipcode, city, state, address, and phone number"
      else input == "export html"
        puts "Export the current queue to the specified filename as a valid HTML file. The file should use tables and include the data for all of the expected information"
      end
    end
  end
end
