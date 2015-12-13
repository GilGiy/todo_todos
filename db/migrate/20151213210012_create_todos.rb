class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string          :title
      t.text            :body
      t.integer         :user_id
      t.datetime        :due_date
      t.boolean         :complete, default: false
      t.integer         :category_id
      t.timestamps null: false
    end
  end
end
