class OrderMailer < ApplicationMailer
    def new_order_email
        @order = params[:order]
    
        mail(to: <ADMIN_EMAIL>, subject: "You got a new order!")
      end
end
