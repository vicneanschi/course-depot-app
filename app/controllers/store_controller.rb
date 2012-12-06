class StoreController < ApplicationController
  def index
	@products = Product.cheap #.all
  end
end
