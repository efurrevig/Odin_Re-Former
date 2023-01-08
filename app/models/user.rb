class User < ApplicationRecord
    validates :username, length: {minimum: 3}
    validates :username, uniqueness: true
    validates :password, length: {minimum: 6}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
