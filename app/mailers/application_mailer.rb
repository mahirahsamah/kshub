# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'kshub.kappasigma@gmail.com'
  layout 'mailer'
end
