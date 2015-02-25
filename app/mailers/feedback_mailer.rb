class FeedbackMailer < ActionMailer::Base
  default from: "\"Сайт EDEM-DESIGN\" <info@edem-design.ru>"
  
  def feedback_message(datas)
    @datas = datas
    mail(to: 'land-edem-proekt@mail.ru', cc: 'land-edem@mail.ru', subject: 'Сообщение с сайта EDEM-DESIGN.RU')
  end
end
