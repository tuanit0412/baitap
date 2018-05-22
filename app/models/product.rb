class Product < ApplicationRecord
	validates :title, :description,:image_url, presence: true #validate khong cho null
	validates :title , uniqueness: true
	validates :price, numericality: {greater_than_or_equal: 0.01, message:"Gia phai la so"}
	validates :image_url, allow_blank: true, format: {with:%r{\.(gif|jpg|png)\Z}i,message: 'file anh phai co duoi la .jpg, .png, .gif'}
end
