class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_src, :body, :user, :created_at
  belongs_to :user
  has_many :comments

  def image_src
    object.image.url
  end
end
