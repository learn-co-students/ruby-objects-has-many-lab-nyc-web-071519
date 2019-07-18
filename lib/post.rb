
require 'pry'

class Post

    attr_accessor :title, :author

    @@all = []
    def initialize (title)
        @title = title
        Post.all << self
        @author
    end

    def self.all
        @@all
    end

    def author_name
        if author
            author.name
        end
    end

    
    # def author
    #     @author = Author.all.find {|author|
    #          author.posts.include?(self)
    #     }
    #     #binding.pry
    # end
    
    #def author = (new_author)


end