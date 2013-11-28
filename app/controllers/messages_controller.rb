class MessagesController < ApplicationController

  def create
    @success = false
    email = !params[:message][:email].scan(/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i).empty?
    name = !params[:message][:name].empty?
    phone = !params[:message][:phone].empty?
    body = !params[:message][:body].empty?
    if name && email && phone && body
      @success = !!FeedbackMailer.feedback_message(params[:message]).deliver
    end
  end
end
