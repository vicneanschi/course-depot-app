module ApplicationHelper
	def current_cart_link
		if session[:cart_id]
			link_to "Your cart", mycart_path
		else
			''
		end
		
	end
end
