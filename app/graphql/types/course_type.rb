module Types
  class CourseType < Types::BaseObject
    field :title, String, null: true
    field :start_date, String, null: true
    field :end_date, String, null: true
    field :description, String, null: true
    field :excerpt, String, null: true
    field :image, String, null: true
    field :klasses, [Types::KlassType], null: true
    field :documentations, [DocumentationType], null: true
  end
end
