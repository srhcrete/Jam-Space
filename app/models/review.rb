class Review < ApplicationRecord
  belongs_to :bands
  belongs_to :service
end
