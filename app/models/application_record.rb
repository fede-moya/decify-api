class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  before_create :denormalize

  def denormalize; end
end
