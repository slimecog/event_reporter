class Attendee
  attr_reader :id,
              :registration_date,
              :first_name,
              :last_name,
              :email_address,
              :home_phone,
              :street,
              :city,
              :state,
              :zipcode

  def initialize(personal_info)
    @id                = personal_info[:id]
    @registration_date = personal_info[:registration_date]
    @first_name        = personal_info[:first_name]
    @last_name         = personal_info[:last_name]
    @email_address     = personal_info[:email_address]
    @home_phone        = personal_info[:home_phone]
    @street            = personal_info[:street]
    @city              = personal_info[:city]
    @state             = personal_info[:state]
    @zipcode           = personal_info[:zipcode]
  end
end
