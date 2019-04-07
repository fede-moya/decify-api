# frozen_string_literal: true

module Rest
  module V1
    class MessageResource < ApplicationResource
      attributes :message, :likes_count, :dislikes_count
      has_one :user
      has_one :decision
    end
  end
end
