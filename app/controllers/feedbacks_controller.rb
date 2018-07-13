class FeedbacksController < ApplicationController
  before_action :logged_in_user
  
  def create
    @project = Project.find(params[:project_id])
    @feedback = @project.feedbacks.create(feedback_params)
    redirect_to project_path(@project)
  end
  
  def new
    @feedback = new
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def index
    @feedback = Feedback.all
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to feedbacks_path
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end
  
  def update
    @feedback = Feedback.find(params[:id])
    if @feedback.update(feedback_params)
      redirect_to @feedback
    else
      render 'edit'
    end
  end

  private
  def feedback_params
    params.require(:feedback).permit(:commenter, :title, :body, :is_approved)
  end
  
  def logged_in_user
    unless current_user
    flash[:danger] = "Administrative function; Please log in"
    end
  end

end
