class Todo < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates_presence_of :user_id, :category_id, :title, :body, :due_date
end
