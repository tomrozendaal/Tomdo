class TodoController < ApplicationController
  def index
    @tasks = Task.all
  end
  def create
    @task = Task.new(params)
    @task.save
    
    redirect_to todo_index_path
    
  end
  
  def edit
    @priorities = {"High" => 1, "Medium" => 2, "Low" => 3}
    @params = params
    @task = Task.find(params['id'])
  end
  
  def new
    @priorities = {"High" => 1, "Medium" => 2, "Low" => 3}
  end
  
  def show
    
  end
  
  def update
    Task.update(params['id'], params)
    redirect_to todo_index_path 
  end
  
  def destroy
    @task = Task.find(params['id'])
    @task.destroy
    
    redirect_to todo_index_path
  end

end
