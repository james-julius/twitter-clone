class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  has_many :followers, class_name: 'Followers', foreign_key: 'follower_id'

  belongs_to :follows, class_name: 'Follows', optional: true

end
