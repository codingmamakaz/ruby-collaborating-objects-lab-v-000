require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
        filenames = Dir.chdir(@path) do | path |
            Dir.glob("*.mp3")
        end
        filenames
    end


    def import
      binding.pry
      self.files do |file|
        song = Song.new_by_filename(file)
        Artist.all << song.artist unless Artist.all.include?(song.artist)
      end
    end
end
