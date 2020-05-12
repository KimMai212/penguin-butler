class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :bookings, dependent: :destroy
    #has_many :reviews, through: :bookings
    validates :username, presence: true, uniqueness: true
    validates :e_mail, presence: true, uniqueness: true
    validates :password, presence: true
    validates :first_name, presence: true
    validates :photo, presence: true
    validates :encrypted_password, presence: true

    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end