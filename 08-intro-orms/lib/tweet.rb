class Tweet
  attr_accessor :message, :username, :likes, :days_old
  # @@all = []

  # Tweet.new({message: "hello", username: "coffee_dad"})
  # Tweet.new("hello", "coffee_dad")
  def initialize(arg_hash)
    arg_hash.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  Tweet.new(username: "coffee_dad", message: "hello", likes: 8, days_old: 4)

  def save
    sql = <<-SQL
      INSERT INTO tweets (message, username) VALUES ("#{self.message}", "#{self.username}");
    SQL

    DB[:conn].execute(sql)
  end

  def self.all
    # @@all
    sql = <<-SQL
      SELECT * FROM tweets
    SQL

    tweets_hashes = DB[:conn].execute(sql)

    tweets_hashes.map do |tweet_hash|
      Tweet.new(tweet_hash["message"], tweet_hash["username"], tweet_hash["id"])
    end
  end
end


# sqlite> SELECT * FROM tweets;
# id          username    message
# ----------  ----------  -----------------
# 648         KevyWevy    Another helloo!!!
