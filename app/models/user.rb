class User < ApplicationRecord
  devise :database_authenticatable,
    :omniauthable,
    :recoverable,
    :registerable,
    :rememberable,
    :validatable,
    omniauth_providers: %i[google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data["email"]).first

    # For new user
    unless user
      user =
        User.create(
          email: data["email"],
          password: Devise.friendly_token[0,20]
        )
    end

    user
  end
end
