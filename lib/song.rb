
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
binding.pry
    # split_name = filename.split(" - ")
    song = self.new(filename.split(" - ")[1])
    artist_name = split_name[0]
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    artist.add_song(song)
    song
  end


end
