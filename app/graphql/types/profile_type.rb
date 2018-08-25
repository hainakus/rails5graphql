module Types
  class ProfileType < Types::BaseObject
    field :facebook, String, null: true
    field :twitter, String, null: true
    field :mobile, Integer, null: true
    field :address, String, null: true
    field :image, String, null: true
  end
end
