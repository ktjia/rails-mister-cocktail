class Cocktail < ApplicationRecord

    has_attachment :photo

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true

end
