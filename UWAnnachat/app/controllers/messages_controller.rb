class MessagesController < ApplicationController

def create
    chatroom_id = params[:message].delete(:chatroom_id)

    @message = Message.new(params[:message])
    @message.author = "Bob"
    @message.chatroom_id = chatroom_id
    @message.save

    redirect_to chatroom_path(@message.chatroom)
  end
  
end