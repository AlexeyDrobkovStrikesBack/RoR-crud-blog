class Post < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    attribute :title, :string
    attribute :description, :text
end
