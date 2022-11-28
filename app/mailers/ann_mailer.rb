class AnnMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ann_mailer.ann_created.subject
  #
  def ann_created
    @user = params[:user]
    @announcement = params[:announcement]
    @greeting = "Hi"

    mail to: User.all.pluck(:email), from: "kshub.kappasigma@gmail.com" , subject: "New Announcement on KS Hub" # send email to all users
  end
end
