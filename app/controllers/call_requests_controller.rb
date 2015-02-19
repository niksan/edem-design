class CallRequestsController < ApplicationController

  def create
    CallRequestMailer.call_request(params['call_request']['phone'], params['call_request']['item']).deliver
    render nothing: true
  end

end
