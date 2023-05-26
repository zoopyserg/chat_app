class Conversation < ApplicationRecord
  has_many :guest_messages
  has_many :ai_messages
end
