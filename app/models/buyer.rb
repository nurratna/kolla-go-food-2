class Buyer < ApplicationRecord
	validates :email, :phone, :address, presence: true
	validates :email, uniqueness: true, format: {
		with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
		message: "Email format not valid"
	}
	validates :phone, numericality: true
	, length: { in: 10..12 }
end

# def is_a_valid_email?(email)
#   (email =~ /^(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+@{1}((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,4}$/i)
#   email =~ /
# end
