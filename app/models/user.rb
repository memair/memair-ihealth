class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:memair]

   def self.from_omniauth(access_token)
     data        = access_token.info
     credentials = access_token.credentials

     user = User.where(email: data['email']).first

     unless user
       user = User.create(
         email:    data['email'],
         password: Devise.friendly_token[0,20]
       )
     end

     user.memair_access_token = credentials['token']
     user.save
     user
   end
end
