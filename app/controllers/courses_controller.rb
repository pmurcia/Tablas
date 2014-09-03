class CoursesController < ApplicationController
  # before_filter :set_subject
  def index
  	@subject = Subject.find params[:subject_id]
  	@courses = @subject.courses.all
  end

  private

  def set_subject
  	subject = Subject.find params[:subject_id]
  end
end
