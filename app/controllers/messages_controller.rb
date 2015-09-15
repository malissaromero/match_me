class MessagesController < ApplicationController
  def create
    @messages = current_user.messages.build(:sender_id => params [:sender_id])
    @messages.save
  end

  def destroy
    @messages = current_user.frienships.find(params[:id])
    @messages.destroy
  end
end
