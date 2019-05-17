class Tweet
  attr_reader :content, :author

  @@all = []

  def initialize(content, author)
    @content = content
    @author = author
    @@all << self
  end

  def author
    @author
  end

  def username
    self.author.username
  end

  def likers
    tweets_likes = Like.all.select do |like|
      like.tweet == self
    end

    tweets_likes.map do |like|
      like.user
    end
  end

  def self.all
    @@all
  end

end
