class Person < ActiveRecord::Base
  validates :name, :presence => true
  validates :slug, :uniqueness => true

  has_and_belongs_to_many :skills

  def stats
    self.attributes.select{ |k,v| !["id", "created_at", "updated_at", "slug", "profile_picture"].include?(k)}
  end

  # def self.search(keyword)
  #   results = self.basic_search(:name => keyword)

  #   results2 << self.joins(:skill).advanced_search(skills: {name: keyword}, false)
  # end
end
