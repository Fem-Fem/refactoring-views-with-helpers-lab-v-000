class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    binding.pry
    return self.name
  end

  def artist_name=(name)
    self.name = name
  end
end
