class User < ApplicationRecord
  has_many :user_feeds
  has_many :feed_posts, through: :user_feeds, source: :post

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
