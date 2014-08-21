class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :apartments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    # Following line makes your model fb-omniauthable
  devise :omniauthable, :omniauth_providers => [:facebook]

end

