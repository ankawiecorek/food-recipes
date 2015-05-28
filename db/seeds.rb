food_types = ["Curry", "Dessert", "Sides", "Breakfast"]
food_types.each{ |d| FoodType.where(:name => d).first_or_create} 	# first_or_create checks for the record in the db before adding it to 

food_preferences = ["Vegetarian", "Vegan", "Meat", "Diary"]
food_preferences.each{ |d| FoodPreference.where(:name => d).first_or_create}

cuisines = ["Italian", "Mexican", "Indian", "Chinese"]
cuisines.each{ |d| Cuisine.where(:name => d).first_or_create}