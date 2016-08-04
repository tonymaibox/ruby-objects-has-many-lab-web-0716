require 'pry'

class Artist
	attr_accessor :name, :songs

@@song_count = 0

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		song.artist = self
		@@song_count += 1
	end

	def add_song_by_name(song_name)
		# binding.pry 
		@@song_count += 1
		song = Song.new(song_name)
		song.artist = self
		@songs << song
		# self
	end

	# def self.songs
	# 	@songs
	# end

	def self.song_count
		# binding.pry
		@@song_count
	end

end