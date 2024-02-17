class CourseModulesController < ApplicationController
  before_action :set_course_module, only: %i[show]

  def index
    @course_modules = CourseModule.all
  end

  def show; end

  private

  def set_course_module
    @course_module = CourseModule.find(params[:id])
  end
end
