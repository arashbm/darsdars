class SessionsController < ApplicationController
  before_filter :authenticate_student!
  before_filter :get_sessions
  self.responder = SessionResponder

  def index
    respond_with(@course, @sessions)
  end

  def new
    @session = @sessions.new
    respond_with(@course, @session)
  end

  def edit
    @session = @sessions.find(params[:id])
  end

  def create
    @session = @sessions.new(params[:session])
    @session.save
    respond_with(@course, @session)
  end

  def update
    @session = @sessions.find(params[:id])
    @session.update_attributes(params[:session])
    respond_with(@course, @session)
  end

  def destroy
    @session = @sessions.find(params[:id])
    @session.destroy
    respond_with(@course, @session)
  end
  
  private

  def get_sessions
    @course = current_student.courses.find params[:course_id]
    @sessions = @course.sessions
  end
end
