class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    return self.artist.name
  end

  def artist_name=(name)
    x = false
    this_artist = nil
    Artist.all.each do |art|
      if art.name == name
        x = true
        this_artist = art
      end
    end
    if x == false
      self.artist = Artist.create!(name: name)
    else
      self.artist = this_artist
    end
  end
end
