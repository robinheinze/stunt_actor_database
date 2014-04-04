class Person < ActiveRecord::Base

  def stats
    self.attributes.select{ |k,v| !["id", "created_at", "updated_at", "slug", "profile_picture"].include?(k)}
  end

end
