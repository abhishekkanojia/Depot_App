class Product < ActiveRecord::Base

	def self.latest
		Product.order(:updated_at).last
	end

	validates_presence_of :title,:description,:image_url,:price
	validates :title ,length: {minimum: 5, message: "Too short !! atleast 5 characters"}
	validates :price , numericality:{ greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url,allow_blank: true, format: { with: %r{\.(gif|jpg|png)\Z}i,
		message: "must be a URL for gif/png/jpg"}
end
