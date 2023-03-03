module Lalo
  module ItemPicker
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
