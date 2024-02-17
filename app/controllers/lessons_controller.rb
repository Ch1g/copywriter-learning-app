class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[show]
  before_action :set_navigation, only: %i[show]

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def set_navigation
    @previous_lesson = @lesson.course_module.lessons.where("id < ?", @lesson.id).last
    @next_lesson = @lesson.course_module.lessons.where("id > ?", @lesson.id).first
  end
end
