require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = User.create(username: "niit", email: "john@gmail.com", password: "niit#123", admin: true)
  end
  
  test "get new category from create category" do
    sign_in_as(@user,"niit#123")
    get new_category_path
    assert_template 'categories/new'
    assert_difference 'Category.count', 1 do
      post_via_redirect categories_path, category: {name: "sports"} #submitting the form
    end
    assert_template 'categories/index'
    assert_match "sports", response.body #checking if the name is sports or not
  end
  
  test "Invalid category submission results in faliure" do
    sign_in_as(@user,"niit#123")
    get new_category_path
    assert_template 'categories/new'
    assert_no_difference 'Category.count' do
      post categories_path, category: {name: " "} #submitting the form
    end
    assert_template 'categories/new'
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end

  
end