require 'pry'
class Song

    attr_accessor :name, :artist
    attr_reader 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song_name = filename.split(/ - |.mp3/)
        new_song = self.new(song_name[1])
        new_song.artist = Artist.new(song_name[0])
        new_song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
    end

end