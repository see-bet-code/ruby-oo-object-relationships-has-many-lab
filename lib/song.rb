class Song
    attr_reader :artist
    attr_accessor :name, :artist_name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def artist=(artist)
        @artist = artist
        @artist_name = artist.name
        artist.songs << self
    end

end