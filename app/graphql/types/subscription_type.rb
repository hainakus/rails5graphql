module Types
  class SubscriptionType < Types::BaseObject
    field :title, String, null: false
    field :users, [Types::UserType], null: true
  end
end
