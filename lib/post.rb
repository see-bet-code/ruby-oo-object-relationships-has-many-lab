class Post
    attr_reader :author
    attr_accessor :title, :author_name
    @@all = []

    def initialize(title)
        @title = title
        self.class.all << self
    end

    def self.all
        @@all
    end

    def author=(author)
        @author = author
        @author_name = author.name
        author.posts << self
    end

end