module Types
  class DocumentationType < Types::BaseObject
    field :title, String, null: true
    field :description, String, null: true
    field :enabled, Boolean, null: false
    field :files, [String], null: true
    field :time_release, String, null: false
  end
end
