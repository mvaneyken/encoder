module Api
  class ScriptsController < Api::BaseController
    
    def index
      scripts = Script.order(:sequence).each.map { |s| s.to_devine }
      render json: scripts.to_json
    end
  
  end
end