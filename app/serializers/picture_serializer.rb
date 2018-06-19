class PictureSerializer < ActiveModel::Serializer
  attributes :id, :description, :photographer, :url, :like_count, :comments

end
