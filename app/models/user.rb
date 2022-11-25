class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.full_name = auth.info.name # assuming the user model has a name
      user.avatar_url = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  #def fullname_from_firstlast
  #  if user.full_name.empty?
  #    user.full_name = user.firstname + " " + user.lastname
  #  end 
  #end

  def update_with_password(params, *options)
    if options.present?
      ActiveSupport::Deprecation.warn <<-DEPRECATION.strip_heredoc
        [Devise] The second argument of `DatabaseAuthenticatable#update_with_password`
        (`options`) is deprecated and it will be removed in the next major version.
        It was added to support a feature deprecated in Rails 4, so you can safely remove it
        from your code.
      DEPRECATION
    end

    current_password = params.delete(:current_password)

    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end

    result = if valid_password?(current_password)
      update(params, *options)
    else
      assign_attributes(params, *options)
      valid?
      errors.add(:current_password, current_password.blank? ? :blank : :invalid)
      false
    end

    clean_up_passwords
    result
  end

  # Method to update the status of a member to inactive
  def self.update_active_status(user)
    user.active = false
    user.save
  end
end
