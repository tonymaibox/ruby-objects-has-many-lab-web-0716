require 'pry'

class Author
	attr_accessor :name, :posts

@@post_count = 0

	def initialize(name)
		@name = name
		@posts = []
	end

	def add_post(post)
		@posts << post
		post.author = self
		@@post_count += 1
	end

	def add_post_by_title(title)
		# binding.pry 
		@@post_count += 1
		post = Post.new(title)
		post.author = self
		@posts << post
		# self
	end

	# def self.songs
	# 	@songs
	# end

	def self.post_count
		# binding.pry
		@@post_count
	end

end