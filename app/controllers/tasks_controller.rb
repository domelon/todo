class TasksController < ApplicationController
  def index
    @tasks = Task.find(:all, :order => "-id")
  end
  
  def show
    @tasks = Task.find(params[:id])
  end
  
  def new
  @tasks = Task.all
  end
 
  def create
    task = Task.new(params[:task])
    task.save
    redirect_to({:action => :index})
  end
end
