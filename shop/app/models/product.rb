class Product < ActiveRecord::Base
  # Paperclip
    has_attached_file :photo,
      :styles => {
        :thumb => "100x100#",
        :small  => "150x150>",
        :medium => "300x300>" }
        
        #Paypal payment
                def paypal_url(return_url)  
                    values = {  
                      #:login_email => 'mewillliams1990@gmail.com',
                      #:login_password => 'knightmare',
                      :business => 'buy_1311792427_per@gmail.com',  
                      #:password 
                      :cert_id => '0987654321',
                      :cmd => '_xclick',  
                      :upload => 1,  
                      :return => return_url,  
                      :invoice => id  
                    }  

                      values.merge!({  
                        "amount" => self.price,  
                        "item_name" => self.name
                      })  


                    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query  
                  end
        
end
