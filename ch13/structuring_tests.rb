require 'test/unit'
require 'dbi'
require 'playlist_builder'
class TestPlaylistBuilder < Test::Unit::TestCase
  def test_empty_playlist
    db = DBI.connect('DBI:mysql:playlists')
    pb = PlaylistBuilder.new(db)
    assert_empty pb.playlist
    db.disconnect
  end
  def test_artist_playlist
    db = DBI.connect('DBI:mysql:playlists')
    pb = PlaylistBuilder.new(db)
    pb.include_artist "krauss"
    refute_empty pb.playlist, "Playlist shouldn't be empty"
    pb.playlist.each do |entry|
      assert_match /krauss/i, entry.artist
    end
    db.disconnect
  end
  def test_title_playlist
    db = DBI.connect('DBI:mysql:playlists')
    pb = PlaylistBuilder.new(db)
    pb.include_title "midnight"
    refute_empty pb.playlist, "Playlist shouldn't be empty"
    pb.playlist.each do |entry|
      assert_match /krauss/i, entry.title
    end
    db.disconnect
  end
end
