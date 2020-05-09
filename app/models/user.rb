class User < ApplicationRecord
    has_secure_password

    validates :name, { presence: true }
    validates :name, length: { maximum: 6 }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, { presence: true }
    validates :email, { uniqueness: true }
    validates :email, format: { with: VALID_EMAIL_REGEX }

    VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
    validates :password, length: { minimum: 6 }, on: :create
    validates :password, format: { with: VALID_PASSWORD_REGEX }, on: :create

    validates :profile,  length: { maximum: 200 }
end
