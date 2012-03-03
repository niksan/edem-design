# encoding: utf-8
class FeedbackMailer < ActionMailer::Base
  default :from => "\"Сайт EDEM-DESIGN\" <info@edem-design.ru>"
  
  def feedback_message(datas)
    @datas = datas
#    mail(:to => 'land-edem@mail.ru', :theme => datas[:theme])
    mail(:to => 'land-edem@mail.ru', :subject => "Заявка")
  end
end
