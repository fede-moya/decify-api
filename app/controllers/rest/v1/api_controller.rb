module Rest
  module V1
    class ApiController < ActionController::API

      include JSONAPI::ActsAsResourceController

    end
  end
end