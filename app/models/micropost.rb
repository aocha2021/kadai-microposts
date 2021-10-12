class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }

  has_many :favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :liked_users, through: :favorite, source: :user


end