class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :doc, counter_cache: true
end
