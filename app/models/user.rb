class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :confirmable, :lockable, :omniauth_providers => [:github]

  def self.from_omniauth(auth)
   first, last = auth.info.name.split(' ', 2)
   auth_user = where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.email        = auth.info.email || ''
     user.password     = Devise.friendly_token[0, 20]
     user.uid        = auth.uid
   end
  end
end
