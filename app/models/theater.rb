class Theater < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :company
  belongs_to_active_hash :parking
  belongs_to_active_hash :smorkingroom
  belongs_to_active_hash :babyroom

end
