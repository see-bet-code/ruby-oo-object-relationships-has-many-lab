class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
    end

    def songs
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        @@all.size
    end

end