module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"

    # First describe the field signature:
    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end


    # Then provide an implementation:
    def post(id:)
      Post.find(id)
    end

    # First describe the field signature:
    field :user, UserType, null: true do
      description "Find an user by ID"
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    # First describe the field signature:
    field :all_courses, [CourseType], null: true do
      description "Find all courses"
    end

    def all_courses
      Course.all
    end

    # First describe the field signature:
    field :course, CourseType, null: true do
      description "Find course by id"
      argument :id, ID, required: true
      argument :user_id, ID, required: true
    end

    def course(id:, user_id:)
      user = User.find(user_id)
      course = Course.find(id)
      u_klass_ids = user.subscriptions.map(&:klass_id)
      c_klass_ids = course.klasses.map(&:id)
      temp = []
      unless (c_klass_ids & u_klass_ids).empty?
        course.documentations.each do |doc|

             if (doc.enabled == true && Time.current.to_i > doc.time_release.to_i)
               temp << doc
             end
        end
        course.documentations = temp
        course
      end
    end
  end
end