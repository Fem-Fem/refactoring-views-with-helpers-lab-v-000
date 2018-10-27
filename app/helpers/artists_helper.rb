module ArtistsHelper
  def display_artist(artist)
    content_for :title, text
  end
end


def title(text)
  content_for :title, text
end
