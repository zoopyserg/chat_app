class AiMessage < ApplicationRecord
  belongs_to :conversation
  has_one :voice_recording
end
