class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
@student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
@student = Student.find(params[:id])
  @student.update(student_params)
  redirect_to '/students'
  end

  def destroy
    Student.find(params[:id]).destroy
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education, :user_id, :cohort_id, :id)
  end
end
