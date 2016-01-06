class User < ActiveRecord::Base
has_secure_password
 validates :email, presence: true, uniqueness: true
 has_many :rooms
 has_many :reservations
end
