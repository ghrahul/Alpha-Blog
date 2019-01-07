class CreateCategoriesTest < ActionDispatch::IntegrationTest
  
  test "get new category from create category" do
    get new_category_path
    assert_template 'categories/new'
    assert_difference 'Category.count', 1 do
      post_via_redirect categories_path, category: {name: "sports"} #submitting the form
    end
    assert_template 'categories/index'
    assert_match "sports", response.body #checking if the name is sports or not
  end

  
end