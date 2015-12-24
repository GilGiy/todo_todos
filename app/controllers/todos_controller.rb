class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = current_user.todos
    @new_todo = Todo.new
  end

  def new
    @new_todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id
    if @todo.save
      redirect_to todos_path, notice: "Todo Created"
    else
      redirect_to :back, notice: "Aw snap, error saving Todo"
    end
  end

  def notebooks

  end

  def show

  end

  private

  def todo_params
    params.require(:todo).permit!
  end

end
