# frozen_string_literal: true

class AdminMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'

  def new_user_waiting_for_approval(email)
    @email = email
    # @admins = User.where(:admin => true)
    mail(to: User.where(admin: true).pluck(:email), subject: 'New user awaiting admin approval')
  end
end
