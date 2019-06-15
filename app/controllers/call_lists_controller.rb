class CallListsController < ApplicationController
  before_action :set_lesson

  def index
    @call_lists = @lesson.call_lists
  end

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end
end