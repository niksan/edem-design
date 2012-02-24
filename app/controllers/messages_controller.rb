<<<<<<< HEAD
=======
# encoding: utf-8
>>>>>>> c4c1446f20f0b6f5b7fbe3729178b829533a0f0d
class MessagesController < ApplicationController

  def create
    FeedbackMailer.feedback_message(params[:message]).deliver
  end
end
