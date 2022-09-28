class ApplicationController < ActionController::Base
    # using this until html form is created
    protect_from_forgery with: :null_session
end
