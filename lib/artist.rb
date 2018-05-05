
class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect do |artist|
      if artist == name
        name
    else
      Artist.new(name)
      end
    end
  end

  def print_songs
    # self.songs.each{|song|puts song.name} <= this works as well
    @songs.each{|song|puts song.name}
  end

end
