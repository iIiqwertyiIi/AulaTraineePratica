class GameSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title ,:release, :platform, :genre, :photo_url

  has_many :expansions

  def photo_url
    if object.photo.attached?
      rails_blob_path(object.photo, only_path: true)
    else
      nil
    end
  end

  
end
