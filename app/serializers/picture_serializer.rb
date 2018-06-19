class PictureSerializer < ActiveModel::Serializer
  attributes :id, :description, :photographer, :url, :like_count, :comments

 def like_count
   if self.object.likes.last
     self.object.likes.last.id
   end
 end

end
