require('minitest/autorun')
require('minitest/reporters')

require_relative('../guests.rb')
require_relative('../room.rb')
require_relative('../songs.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSongs < MiniTest::Test

  def setup()


    @song1 = Song.new("Delilah", "Tom Jones")
    @song2 = Song.new("Tequila", "The Champs")
    @song3 = Song.new("Jolene", "Dolly Parton")

    @songs = [@song1, @song2, @song3]





  end

  def test_song_name
    assert_equal("Delilah", @song1.song_name)
  end

  def test_artist_name
    assert_equal("Dolly Parton", @song3.artist)
  end


end
