# encoding: utf-8
class MessagesController < ApplicationController

  def create
    FeedbackMailer.feedback_message(params[:message]).deliver
  end
end
