class User < ActiveRecord::Base
  has_one :personality
  has_many :messages
  has_many :sent_messges, through: :messages
  has_many :recieved_messages, through: :messages

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :id)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.id = auth.id
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.location
      user.photo_url
      user.save!
    end
  end
end
