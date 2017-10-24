require "csv"
require "./lib/attendees"


class queue
  attr_reader :contents

  def initialize
    @queue = []
    @contents = contents
  end

  def load(filename)
    @contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
    @contents.each do |row|
      attendees = Attendee.new(row)
      @queue << attendees
    end
  end

  def find_id(id)
    @contents.each do |row|
      id = row[:id]
    end
    puts "#{id}"
  end

  def find_registration_date(date)
    @contents.each do |row|
      date = row[:registration_date]
    end
    puts "#{date}"
  end

  def find_first_name(name)
    @contents.each do |row|
      name = row[:first_name]
    end
    puts "#{name}"
  end

  def find_last_name(last_name)
    @contents.each do |row|
      last_name = row[:last_name]
    end
    puts "#{last_name}"
  end

  def find_email_address(email_address)
    @contents.each do |row|
      email_address = row[:email_address]
    end
    puts "#{email_address}"
  end

  def find_home_phone(home_phone)
    @contents.each do |row|
      home_phone = row[:home_phone]
    end
    puts "#{home_phone}"
  end

  def find_street(street)
    @contents.each do |row|
      street = row[:street]
    end
    puts "#{street}"
  end

  def find_city(city)
    @contents.each do |row|
      city = row[:city]
    end
    puts "#{city}"
  end

  def find_state(state)
    @contents.each do |row|
      state = row[:state]
    end
    puts "#{state}"
  end

  def find_zipcode(zipcode)
    @contents.each do |row|
      zipcode = row[:zipcode]
    end
    puts "#{zipcode}"
  end

  def count
    @queue.count
  end

  def clear
    @queue = []
  end

  def print
  end

  def print_by(attribute)
  end

  def save_to(filename)
  end

  def help#without attribute ???
  end

  def help(command)
    if command = "load"
      p "Erase any loaded data and parse the specified file. If no filename is given, default to full_event_attendees.csv"
    elsif command = "find"
      p "Populate the queue with all records matching the criteria for the given attribute"
    elsif command = "count"
      p "Output how many records are in the current queue"
    elsif command = "clear"
      p "Empty the queue"
    elsif command = "print"
      p "Print out a tab-delimited data table with a header row"
    elsif command = "print_by"
      p "Print the data table sorted by the specified attribute like zipcode"
    elsif command = "save_to"
      p "Export the current queue to the specified filename as a CSV. The file should should include data and headers for last name, first name, email, zipcode, city, state, address, and phone number"
    elsif command = "export_html"
      p "Export the current queue to the specified filename as a valid HTML file. The file should use tables and include the data for all of the expected information"
    elsif command = "help"
      p "Output a listing of the available individual commands"
    else command = "help(command)"
      p "Output a description of how to use the specific command"
    end
  end
end
