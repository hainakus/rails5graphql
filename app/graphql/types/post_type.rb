module Types
  class PostType < Types::BaseObject

    field :title, String, null: true
    field :description, String, null: true
    field :image, String, null: true
  end
end
