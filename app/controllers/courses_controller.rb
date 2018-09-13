class CoursesController < ApplicationController
  def index
    @Courses = Course.all
  end

  def show
@course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end


  def edit
    @course = Course.find(params[:id])
  end

  def update
@course = Course.find(params[:id])
  @course.update(course_params)
  redirect_to '/courses'
  end

  def destroy
    Course.find(params[:id]).destroy
  end
end
