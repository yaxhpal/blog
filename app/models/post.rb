class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
end
