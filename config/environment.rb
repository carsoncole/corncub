# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: "gmail.com",
  authentication: :plain,
  enable_starttls_auto: true,
  user_name: Rails.application.secrets.email_user_name,
  password: Rails.application.secrets.email_password
 }