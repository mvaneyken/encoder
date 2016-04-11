class SurveyController < ApplicationController

  def index
    @scripts = Script.survey(nil).order(:sequence)
  end

end
