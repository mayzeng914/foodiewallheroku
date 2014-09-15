class Comment
  include Mongoid::Document
  field :comment, type: String

  belongs_to :user
  belongs_to :foodiepicture
end
