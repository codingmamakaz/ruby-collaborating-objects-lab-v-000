
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    
  Artist.find_or_create_by_name(name)
  Artist.add_song(song)
  end




  def self.new_by_filename(filename)
    #This will return "Black or White"
binding.pry
    title = filename.split(" - ")[1]
    name = filename.split(" - ")[0]
    artist_name=(name)
    song = self.new(title)

    song
  end


end
