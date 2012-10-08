class SessionsController < ApplicationController
  before_filter :authenticate_student!
  before_filter :get_sessions
  def index
    respond_with(@sessions)
  end

  def show
    @session = @sessions.find(params[:id])
    respond_with(@session)
  end

  def new
    @session = @sessions.new
    respond_with(@session)
  end

  def edit
    @session = @sessions.find(params[:id])
  end

  def create
    @session = @sessions.new(params[:session])
    @session.save
    respond_with(@session)
  end

  def update
    @session = @sessions.find(params[:id])
    @session.update_attributes(params[:session])
    respond_with(@session)
  end

  def destroy
    @session = @sessions.find(params[:id])
    @session.destroy
    respond_with(@session)
  end
  
  private
  def get_sessions
    @course = current_student.courses.find params[:course_id]
    @sessions = @course.find params[:id]
  end
end
