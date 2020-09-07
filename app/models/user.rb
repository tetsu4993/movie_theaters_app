class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :theaters
  has_many :comments

  with_options presence: true do
    validates :nickname, format: {with: //, message: ""}
    validates :birthday, format: {with: //, message: ""}
    VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
    validates :email, format: {with: VALID_EMAIL_REGEX}
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-zA-Z])(?=.*?[\d])[a-zA-Z\d]{6,}+\z/
    validates :password, format: {with: VALID_PASSWORD_REGEX, message: "Include both letters and numbers"}
    validates :password, length: {minimum: 6, message: "is too short (minimum is 6 characters)"} 
    validates :password_confirmation, format: {with: VALID_PASSWORD_REGEX, message: "Include both letters and numbers"}
    validates :password_confirmation, length: {minimum: 6, message: "is too short (minimum is 6 characters)"}
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :moviesee
  belongs_to_active_hash :pamphlet
end
