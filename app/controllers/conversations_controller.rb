class ConversationsController < ApplicationController
  def index
    @conversation = Conversation.create #(guest_id: current_user.id, host_id: params[:host_id])
    redirect_to conversation_path(@conversation)
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = [@conversation.guest_messages, @conversation.ai_messages].flatten.sort_by(&:created_at)
  end
end
