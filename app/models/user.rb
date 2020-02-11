class User < ApplicationRecord
    validates :username, uniqueness: true
    has_secure_password 
    has_many :notes
    has_one :preference
end

