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
    if @question.save
      flash[:notice] = "Question submitted!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def question_params
    params.require(:question).permit(:body, :title, :user_id)
  end

end
