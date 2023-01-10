class Xur < ApplicationRecord
  belongs_to :project
  has_one_attached :pxur
end
 