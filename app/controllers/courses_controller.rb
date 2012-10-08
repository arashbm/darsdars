class CoursesController < ApplicationController
  before_filter :authenticate_student!
  before_filter :get_courses

  def index
    respond_with(@courses)
  end

  def show
    @course = @courses.find(params[:id])
    respond_with(@course)
  end

  def new
    @course = @courses.new
    respond_with(@course)
  end

  def edit
    @couerse = @courses.find(params[:id])
  end

  def create
    @course = @courses.create(params[:course])
    respond_with(@course)
  end

  def update
    @course = @courses.find(params[:id])
    @course.update_attributes(params[:course])
    respond_with(@course)
  end

  def destroy
    @course = @courses.find(params[:id])
    @course.destroy
    respond_with(@course)
  end

  private
  def get_courses
    @courses = current_student.courses
  end
end
