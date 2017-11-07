class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

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

   redirect_to task_path(@task)
 end

 def edit

 end

 def update
  @task.update(task_params) #  name: "Make Dinner", completed: "true"

    redirect_to task_path(@task)
 end

 def destroy
   @task.destroy

    redirect_to tasks_path
 end

private

 def set_task
  @task = Task.find(params[:id])
 end

 def task_params
    # params
    # => { id: '1', restaurant: { name: "Loetjes", address: "Amsterdam" } }

    # params.require(:restaurant)
    # => { name: "Loetjes", address: "Amsterdam", featured: true }

    params.require(:task).permit(:name, :completed)
    # => { name: "Loetjes", address: "Amsterdam" }
  end
end

