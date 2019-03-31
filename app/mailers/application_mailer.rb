class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@decify.io'
  layout 'mailer'
end
