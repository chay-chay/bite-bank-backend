class Recipe < ApplicationRecord
    validates :name, presence: true, :uniqueness => {:case_sensitive => false}
    validates :category, presence: true
    validates :area, presence: true
    validates :image_url, presence: true
    validates :youtube_url, presence: true
end
