class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer         :user_id
      t.string          :title
      t.string          :color
      t.timestamps null: false
    end
  end
end
