class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :author
      t.string :rate
      t.string :difficulty
      t.string :budget
      t.string :prep_time
      t.string :total_time
      t.string :people_quantity
      t.string :author_tip
      t.text :ingredients, array: true, default: []
      t.string :name
      t.text :tags, array: true, default: []
      t.string :image
      t.string :nb_comments
      t.string :cook_time

      t.timestamps
    end
  end
end
