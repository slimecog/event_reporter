require "minitest/autorun"
require "minitiest/pride"
require "./lib/event_reporter"

class EventReporterTest < Minitest::Test

  def test_it_exists
    event_reporter = EventReporter.new

    assert_instance_of EventReporter, event_reporter
  end

  def test_it_holds_help_contents
    event_reporter = EventReporter.new

    assert_equal "The available commands are \"load\", \"find\", \"count\", \"clear\", \"print\", \"print by\", \"save to\", and \"export html\"", event_reporter.start.help
  end




end
