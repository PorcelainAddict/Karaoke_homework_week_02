require('minitest/autorun')
require('minitest/reporters')

require_relative('../guests.rb')
require_relative('../room.rb')
require_relative('../songs.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRoom < MiniTest::Test

  def setup()

    @song1 = Song.new("Delilah", "Tom Jones")
    @song2 = Song.new("Jessica Simpson", "Adam Green")
    @song3 = Song.new("Jolene", "Dolly Parton")



    @guest1 = Guests.new("Eliza", 100, "Delilah")
    @guest2 = Guests.new("Gill", 120, "Jessica Simpson")
    @guest3 = Guests.new("George", 80, "Jolene")

    @songs = []
    @guests = [@guest1, @guest2, @guest3]

    @room1 = Room.new("The Tom Jones", @songs, @guests, 1000, 5, 2)

  end

  def test_room_name
    assert_equal("The Tom Jones", @room1.room_name)
  end

  def test_song_name
    assert_equal("Jolene", @song3.song_name)
  end

  def test_guest_name
    assert_equal("Eliza", @guest1.guest)
  end

  def test_guest_wallet
    assert_equal(100, @guest1.guest_wallet)
  end

  def test_till_cash
    assert_equal(1000, @room1.till_cash)
  end

  def test_room_price
    assert_equal(5, @room1.room_price)
  end

  def test_room_capacity
    assert_equal(2, @room1.room_limit)
  end
  #


  def test_add_guest
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal(3, @room1.guest_list.count)
  end

  # def test_remove_guest
  #   @room1.remove_guest(@guest3)
  #   assert_equal(2, @room1.guest_list.count)
  # end

  #test no working, can't see the forest for the trees. Would like to recap.

  def test_guest_count
    assert_equal(3, @guests.count)
  end

  def test_add_song
    @room1.add_song(@song3)
    assert_equal(1, @songs.count)
  end

  def test_room_limit_full
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal(2, @room1.room_limit.count(@guest1))
  end

    #test no working, can't see the forest for the trees. Would like to recap.

  def test_guest_pay_for_entry
    @room1.guest_pay_for_entry(@guest2)
    assert_equal(115, @guest2.guest_wallet.room_price)
  end

    #test no working, can't see the forest for the trees. Would like to recap. 







end
