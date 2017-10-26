require "csv"
require "./lib/attendee"

class Queue
  attr_reader :contents

  def initialize
    @queue = []
    @contents = []
  end

  def load(filename = "full_event_attendees.csv")
    contents = CSV.open filename, headers: true, header_converters: :symbol
    contents.map do |row|
      @contents << Attendee.new(row)
    end
  end

  def find_id(id)
    @queue = []
    @contents.each do |row|
      if row.id == id
        @queue << row
      end
    end
  end

  def find_registration_date(date)
    @queue = []
    @contents.each do |row|
      if row.registration_date == date
        @queue << row
      end
    end
  end

  def find_first_name(first_name)
    @queue = []
    @contents.each do |row|
      if row.first_name == first_name
        @queue << row
      end
    end
  end

  def find_last_name(last_name)
    @queue = []
    @contents.each do |row|
      if row.last_name == last_name
        @queue << row
      end
    end
  end

  def find_email_address(email_address)
    @queue = []
    @contents.each do |row|
      if row.email_address == email_address
        @queue << row
      end
    end
  end

  def find_home_phone(home_phone)
    @queue = []
    @contents.each do |row|
      if row.home_phone == home_phone
        @queue << row
      end
    end
  end

  def find_street(street)
    @queue = []
    @contents.each do |row|
      if row.street == street
        @queue << row
      end
    end
  end

  def find_city(city)
    @queue = []
    @contents.each do |row|
      if row.city == city
        @queue << row
      end
    end
  end

  def find_state(state)
    @queue = []
    @contents.each do |row|
      if row.state == state
        @queue << row
      end
    end
  end

  def find_zipcode(zipcode)
    @queue = []
    @contents.each do |row|
      if row.zipcode == zipcode
        @queue << row
      end
    end
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
end
