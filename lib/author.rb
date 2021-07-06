require 'pry'

class Author

    attr_accessor :name, :posts

    @@all = []
    def initialize (name)
        @name = name
        @posts = []
        Author.all << self
    end

    def self.all
        @@all
    end

    def add_post (post)
        post.author = self
        posts << post
        #binding.pry
    end

    def add_post_by_title (post_title)
        new_post = Post.new (post_title)
        self.add_post (new_post)
    end

    def self.post_count
        Author.all.map {|authors| authors.posts}.flatten.length
    end






end