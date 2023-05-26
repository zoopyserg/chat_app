class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @messages = [@conversation.guest_messages, @conversation.host_messages].flatten.sort_by(&:created_at)
  end
end
