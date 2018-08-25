module Types
  class UserType < Types::BaseObject
    field :email, String, null: true
    field :sign_in_count, Integer, null: true
    field :current_sign_in_ip, String, null: true
    field :testimonials, [Types::TestimonialType], null: true
    field :profile, Types::ProfileType, null: false
    field :role, String, null: true
  end

end
