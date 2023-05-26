require 'net/http'
require 'uri'
require 'json'

class ElevenLabsApi
  XI_API_KEY = "5dd192f32fde3f970282f813b4d95162"
  BASE_URL = "https://api.elevenlabs.io/v1"

  def self.get_voices
    # Implement GET request to /voices
  end

  def self.get_voice_settings
    # Implement GET request to /voices/settings/default
  end

  def self.text_to_speech(text, voice_id)
    # Implement POST request to /text-to-speech/{voice_id}/stream
  end

  def self.get_history
    # Implement GET request to /history
  end

  # Add other API methods as needed
end
