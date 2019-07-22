class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
        Song.all.length
    end
end