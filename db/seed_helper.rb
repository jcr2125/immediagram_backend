def get_data(link)
  JSON.parse(RestClient.get(link))
end

def create_picture_object(photographer, description, url)
  puts description
  Picture.create(description: description, photographer: photographer, url: url)
end

def create_model(unsplash_data)
  photographer = unsplash_data["user"]["name"]
  description = unsplash_data["description"]
  url = unsplash_data["urls"]["raw"]
  if description != nil
    create_picture_object(photographer, description, url)
  end
end
