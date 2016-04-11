module Api

  class BaseController < ApplicationController

    # Authenticity token not required by the API
    skip_before_filter :verify_authenticity_token

    respond_to :json

  end
end