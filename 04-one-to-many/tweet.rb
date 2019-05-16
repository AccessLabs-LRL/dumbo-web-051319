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

  def self.all
    @@all
  end

end
