module Rest
  module V1
    class UsersController < ApiController
    	skip_before_action :authenticate_request, only: [:create]
    end
  end
end