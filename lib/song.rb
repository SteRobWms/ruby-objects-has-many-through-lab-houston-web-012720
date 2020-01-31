require 'pry'
require_relative 'genre.rb'
require_relative 'artist.rb'

class Song

    @@all = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

end

# binding.pry
0