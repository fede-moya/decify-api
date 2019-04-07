class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  before_validation :denormalize

  def denormalize; end
end
