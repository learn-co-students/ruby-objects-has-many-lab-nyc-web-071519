require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize (name)
        @name = name
        @songs = []
        @@all << self
    end
    
    def self.all
        @@all
    end

    def add_song (song)
        song.artist = self
        self.songs << song
    end

    def add_song_by_name (song_name)
        add_song(Song.new(song_name))
    end

    def self.song_count
        all.map{|artist|
        artist.songs
    }.flatten.length
    end



end