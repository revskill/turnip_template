ActionMailer::Base.smtp_settings = {
  :delivery_method      => :smtp,
  :raise_delivery_errors=> false,
  :address              => "localhost",
  :port                 => 25,
  :domain               => "test.com"
}