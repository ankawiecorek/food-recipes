require 'test_helper'

class RecipeFlowsTest < ActionDispatch::IntegrationTest

	setup do	
		@recipe = recipes(:one)
	end

	test "should get index" do
		get :index
		assert_response :success
		assert_not_nil assigns(:recipes)
	end

	fixtures :recipes
	
	test "create recipes" do 
		https!

		dessert = recipes(:dessert)
		get "/recipes/new"

		assert_response :success
		post_via_redirect "/recipes/new", title:
			recipes(:dessert).title

		assert_equal '/recipes', path
		assert_equal 'Create Recipe', flash[:notice]
		https!(false)
		get "/recipes"
		assert_response :success
		assert assigns(:recipes)


	end
end