module Types
  class MutationType < Types::BaseObject



    field :create_post, PostType, null: false do
      description "Create a post"
      argument :title, String, required: true
      argument :description, String, required: true
    end

    def create_post(title:, description:)
      Post.create!(title: title, description: description)
    end

    field :create_testimonial, TestimonialType, null: false do
      description "Create Klass Testimonial"
      argument :title, String, required: true
      argument :description, String, required: true
      argument :attributes, UserAttributes, required: true

    end

    def create_testimonial(title:, description:, attributes:)
     Testimonial.create!(title: title, description: description, user_id: attributes.id)

    end

    field :register_to_klass, SubscriptionType, null: false do
      description 'Register User to Class'
      argument :user_id, ID, required: true
      argument :klass_id, ID, required: true
    end

    def register_to_klass( user_id:, klass_id:)

          user = User.where(id:user_id).first
          subs = Subscription.where(klass_id:klass_id).first
          subs.title
          ids = subs.users.map(&:id)
          puts ids
          unless ids.include? user_id.to_i
              subs.users.append(user)
          end


          subs
    end
  end
end
