class Blog
	@@all_blog_posts = []
	@@num_blog_posts = 0

	def self.all
		@@all_blog_posts
	end

	def self.add(thing)
		@@all_blog_posts << thing
		@@num_blog_posts += 1
	end

	def self.publish 
		@@all_blog_posts.each do |post|
			puts "Title:\n #{post.title}"
			puts "Body:\n #{post.content}"
			puts "Publish Date:\n #{post.created_at}"
		end
	end
end

class Post < Blog
	def self.create
		post = new
		puts "Name your blog post:"
		post.title = gets.chomp
		puts "Your blog post content:"
		post.content = gets.chomp
		post.created_at = Time.now
		post.save
		puts "Do you want to create another blog post? [Y/N]?"
		create if gets.chomp.downcase == 'y'
	end

	def title
		@title
	end

	def title=(title)
		@title = title
	end

	def created_at=(created_at)
		@created_at = created_at
	end

	def content
		@content
	end

	def content=(content)
		@content
	end

	def save
		Post.add(self)
	end
end

Post.create
all_blog_posts = Post.all_blog_posts
puts all_blog_posts.inspect
Post.publish 