module FlickrHelper
  def photos_search(text)
    flickr = Flickr.new(
        api_key:       '13c82efdfc69ca0a1aa8a43681459227',
        shared_secret: 'e027a7ed92fbedc1',
        verify_ssl:    false
    )

    flickr.photos.first(10).in_groups_of(5)
  end
end
