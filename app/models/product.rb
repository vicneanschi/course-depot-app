class Product < ActiveRecord::Base
	default_scope :order=>"title"
	scope :cheap, where("price<5")

	validates :title, :description, :image_url, :price, :presence => true
	validates :title, :uniqueness => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i,
										:message => "must be gif|jpg|png"}
end
