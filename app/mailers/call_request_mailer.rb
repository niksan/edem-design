class CallRequestMailer < ActionMailer::Base
  default from: "\"Сайт EDEM-DESIGN\" <info@edem-design.ru>"
  
  def call_request(phone, item='')
    @phone = phone
    @item = item
    logger.info @phone.inspect
    logger.info @item.inspect
    mail(to: 'nikulinaleksandr@gmail.com', subject: 'ЗАКАЗ обратного звонка!!!')
  end

end
