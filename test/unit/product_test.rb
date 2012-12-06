require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "validates presence of attrs" do
	product = Product.new
	assert product.invalid?
	assert product.errors[:title].any?
  end
  test "price must be >=0.01" do
	product = Product.new #(:title=>"asdf", :description=>"d", :image_url=>"xxx.png")
	assert product.invalid?
	assert product.errors[:price].any?
	product.price = 0.00
	assert product.errors[:price].any?
	product.price = -1.00
	assert product.errors[:price].any?
	product.price = 0.01
	assert product.valid?

  end
  test "validates uniqueness" do
	product = Product.new
	product.title = products(:alice).title
	assert !product.save
  end
  
end
