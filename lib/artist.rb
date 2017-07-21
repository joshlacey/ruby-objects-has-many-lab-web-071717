require 'pry'

@@song_count = 0

class Artist

  attr_accessor :name
  attr_reader :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  #def songs
  #  @songs
  #end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(title)
    song = Song.new(title)
    #binding.pry
    add_song(song)
  end

  def self.song_count
    @@song_count
  end


end
