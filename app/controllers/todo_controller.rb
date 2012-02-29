class TodoController < ApplicationController
  def index
    @tasks = Task.all
  end
  def create
    @params = params
    
    @task = Task.new(params)
    @task.save
    
    redirect_to todo_index_path
    
  end
  
  def new
    @priorities = {"High" => 1, "Medium" => 2, "Low" => 3}
  end
  
  def show
    
  end
  
  def destroy
    @params = params
    
    @task = Task.find(params['id'])
    @task.destroy
    
    redirect_to todo_index_path
  end

end
