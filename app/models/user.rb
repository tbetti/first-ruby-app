# email:string
# password_digest:string
# 
# password:string virtual
# password_confirmation virtual

class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /[A-Za-z0-9]+@[A-z]+\.[A-z]{2,3}/ , message: "Must be a valid email address" }
end