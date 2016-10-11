class App < ActiveRecord::Base
validates :name, uniqueness: true
validates :name, :developer, :description, :image_irl, presence: true
validates :ranting, numericality: { only_integer: true }
end
