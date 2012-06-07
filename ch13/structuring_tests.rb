require 'test/unit'
require 'dbi'
require 'playlist_builder'
class TestPlaylistBuilder < Test::Unit::TestCase
  def setup
    @db = DBI.connect('DBI:mysql:playlists')
    @pb = PlaylistBuilder.new(@db)
  end
  def teardown
    @db.disconnect
  end
  def test_empty_playlist
    assert_empty @pb.playlist
  end
  def test_artist_playlist
    @pb.include_artist "krauss"
    refute_empty @pb.playlist, "Playlist shouldn't be empty"
    @pb.playlist.each do |entry|
      assert_match /krauss/i, entry.artist
    end
  end
  def test_title_playlist
    @pb.include_title "midnight"
    refute_empty @pb.playlist, "Playlist shouldn't be empty"
    @pb.playlist.each do |entry|
      assert_match /krauss/i, entry.title
    end
  end
end
