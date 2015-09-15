class User < ActiveRecord::Base
  has_one :personality
  has_many :messages
  has_many :sent_messges, through: :messages
  has_many :recieved_messages, through: :messages
end
