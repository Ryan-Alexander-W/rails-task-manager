class TasksController < ApplicationController
  def index
    @tasks = Task.all

  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
     @task = Task.new(task_params)
    @task.save

    redirect_to restaurant_path(@restaurant)
  end

  def edit

  end

  def update
  end

  def destroy
  end
end

