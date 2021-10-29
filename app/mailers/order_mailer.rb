class OrderMailer < ApplicationMailer
    def new_order_email
        @order = params[:order]
        @greeting = "Hi"
        attachments['oracle.png'] = File.read('app/assets/images/oracle.png')
        mail(
          from: "Billo <billodiallonet@gmail.com>",
          to: email_address_with_name(Order.first.email, Order.first.email), 
        #   cc: User.all.pluck(:email), 
          bcc: "billoa42@hotmail.com", 
          subject: "New post created"
        )
      end
end
