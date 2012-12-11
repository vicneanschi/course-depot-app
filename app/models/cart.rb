class Cart < ActiveRecord::Base
	has_many :line_items, :dependent=>:destroy
	def add_product(product_id)
		current_item = LineItem.find_by_product_id(product_id)
		if current_item
			current_item.qantity +=1
		else 
			current_item = line_items.build(:product_id=>product_id)
		end
		current_item
	end
end
