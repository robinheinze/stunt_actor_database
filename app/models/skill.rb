class Skill < ActiveRecord::Base
  validates :name, :presence => true
  validates :slug, :uniqueness => true

  has_and_belongs_to_many :people
end
