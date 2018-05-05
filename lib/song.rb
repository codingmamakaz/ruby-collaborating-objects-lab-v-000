
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
binding.pry
    song = self.new(filename.split(" - ")[1])
    # artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    artist_name = filename.split(" - ")[0]
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    artist.add_song(song)
    song
  end


end
