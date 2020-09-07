class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #with_options presence: true do
    #validates :nickname, format: {with: //, message: ""}
    #validates :birthday, format: {with: //, message: ""}
  #end
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :moviesee
  belongs_to_active_hash :pamphlet
end
