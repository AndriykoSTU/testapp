class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :author,  type: String
  field :title,   type: String
  field :body,    type: String
  field :created, type: Time,   default: ->{Time.now}
  field :id,      type: String, default: ->{_id}

  validates :body, :title, :author, presence: true
end
