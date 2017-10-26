require "minitest/autorun"
require "minitest/pride"
require "./lib/attendee"

class AttendeeTest < Minitest::Test

  def test_it_has_attributes
    attendee = Attendee.new("1")#, "06/15/2014", "Sophie", "Johnson", "sophie@email.com", "1(800)PUPPERS", "123 Puppy Way", "Denver", "Colorado", 80203)

    assert_equal "1", attendee.id
  end
end
