require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "Gaming")
  end

  test "category should be valid" do
    assert @category.valid?
  end

  test "name should be present" do
    @category.name = ""
    assert_not @category.valid?
  end

  test "name should be unique" do
    @category.save
    @category2 = Category.new(name: "Gaming")
    assert_not @category2.valid?
  end

  test "name should be not be too long" do
    @category.name = 'hks'* 26
    assert_not @category.valid?
  end

  test "name should be too short" do
    @category.name = 'hh'
    assert_not @category.valid?
  end

end