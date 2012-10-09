class StudentsController < ApplicationController
  before_filter :authenticate_student!

  def show
    respond_with :student
  end

  def edit
    @student = current_student
  end

  def update
    @student = current_student
    @student.update_attributes params[:student]
    respond_with :student
  end
end
