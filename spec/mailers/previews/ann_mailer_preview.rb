# Preview all emails at http://localhost:3000/rails/mailers/ann_mailer
class AnnMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/ann_mailer/ann_created
  def ann_created
    AnnMailer.with(user: User.first, announcement: Announcement.first).ann_created
  end

end
