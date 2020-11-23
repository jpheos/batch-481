class MessagesController < ApplicationController
  # POST /chatrooms/:chatroom_id/messages
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    if @message.save
      broadcast_messages_to_clients
      redirect_to chatroom_path(@chatroom)
    else
      render 'chatrooms/show'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def broadcast_messages_to_clients
    ChatroomChannel.broadcast_to(
      @chatroom,
      render_to_string(partial: "messages/message", locals: { message: @message })
    )
  end
end
