module Types
  class KlassType < Types::BaseObject
    field :title, String, null: true
    field :subscriptions, [Types::SubscriptionType], null: true
  end
end
