class User
  attr_reader :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def tweets

    Tweet.all.select do |tweet|
      tweet.author == self
    end
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  def like_tweet(tweet)
    Like.new(tweet, self)
  end

  def likes
    Like.all.select { |like| like.user == self }
  end

  def liked_tweets
    self.likes.map do |like|
      like.tweet
    end
  end

  def number_of_likes
    self.likes.count
  end

  def liked_tweets_contents
    self.liked_tweets.map do |tweet|
      tweet.content
    end
  end

  def self.all
    @@all
  end
end
