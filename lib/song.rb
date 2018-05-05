
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #This will return "Black or White"
    title = filename.split(" - ")[1]
    song = self.new(title)
    name = filename.split(" - ")[0]
    artist_name=(name)
    song = self.new(title)

    song
  end


end
