class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photos
  has_many :friend_requests, foreign_key: "friend_id", class_name: "Friendship"
  has_many :friends, foreign_key: "user_id", class_name: "Friendship"
end
