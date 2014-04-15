class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(question_params)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def show
    @question = Question.find(params[:id])
    @response = Response.new
  end

  private
  def question_params
    params.require(:question).permit(:body, :title, :user_id)
  end

end
