class App < ActiveRecord::Base

validates :name, :developer, :description, :image_irl, presence: true
validates :name, uniqueness: true
validates :price, numericality: { greater_than_or_equal_to: 0.01 }
validates :image_irl, allow_blank: true, format: {
  with: %r{\.(gif|jpg|png)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
}

end
