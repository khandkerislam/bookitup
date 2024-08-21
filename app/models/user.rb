class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Constants
  enum role: { patron: 0, librarian: 1 }

  validates :email, presence: true
  validates :password, presence: true
  validates :role, presence: true
  validates :card_number, presence: true

  validates :email, uniqueness: true
  validates :card_number, uniqueness: true
end
