module ApplicationHelper

  def herlper_picture_url(cocktail)
    # raise
    if cocktail.photos?
      url = cl_image_path cocktail.photos.first.path, width: 200, height: 300, crop: :fill
    else
      url = 'https://unsplash.it/200/300/?random'
    end
  end
end
