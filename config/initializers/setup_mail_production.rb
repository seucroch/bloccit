if Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,    
    :user_name      => 'app18327114@heroku.com',
    :password       => 'j6k4e5ks',
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }
end