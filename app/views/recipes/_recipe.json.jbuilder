json.extract! recipe, :id, :author, :rate, :difficulty, :budget, :prep_time, :total_time, :people_quantity, :author_tip, :ingredients, :name, :tags, :image, :nb_comments, :cook_time, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
