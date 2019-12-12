require 'pry'

class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save 
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def author_name
        if !self.author
            nil
        else
            self.author.name
        end 
    end
end