class GuestMessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @guest_message = @conversation.guest_messages.build(message_params)

    if @guest_message.save
      # Send the message to the API and create an AI message
      voice_id = ElevenLabsApi.get_voices.first['id']
      response = ElevenLabsApi.text_to_speech(@guest_message.content, voice_id)
      ai_message = @conversation.ai_messages.build(content: 'This is a response from ElevenLabs') # The content can be different depending on the API response
      voice_recording = ai_message.build_voice_recording(audio: response.body)
      ai_message.save
      redirect_to conversation_path(@conversation)
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:guest_message).permit(:content)
  end
end
