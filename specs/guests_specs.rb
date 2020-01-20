require('minitest/autorun')
require('minitest/reporters')

require_relative('../guests.rb')
require_relative('../room.rb')
require_relative('../songs.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestGuests < MiniTest::Test

  def setup()


    @guest1 = Guests.new("Eliza", 100)
    @guest2 = Guests.new("Gill", 120)
    @guest3 = Guests.new("George", 80)

    @guests = [@guest1, @guest2, @guest3]

  end

  def test_guest_count
    assert_equal(3, @guests.count)
  end

  
end
