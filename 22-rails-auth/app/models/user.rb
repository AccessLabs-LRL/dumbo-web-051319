class User < ApplicationRecord

  has_secure_password

  validates :username, uniqueness: true
  has_many :votes

  def votes_remaining
    10 - self.votes.count
  end

  # def password=(passArg)
  #   self.password_digest = BCrypt::Password.create(passArg)
  # end
  #
  # def authenticate(plain_text_password)
  #   BCrypt::Password.new(self.password_digest) == plain_text_password
  # end

end
