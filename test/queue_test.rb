require "minitest/autorun"
require "minitest/pride"
require "./lib/queue"

class QueueTest < Minitest::Test

  def test_it_exists
    queue = Queue.new

    assert_instance_of Queue, queue
  end

  def test_it_can_load
    queue = Queue.new

    assert_equal
  end

end
