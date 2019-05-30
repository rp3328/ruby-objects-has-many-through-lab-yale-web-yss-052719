class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(sname, genre)
        Song.new(sname, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end

    
end