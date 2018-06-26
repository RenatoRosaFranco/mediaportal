# string:sanatizer
class Post < ApplicationRecord
	enum  status: [:published, :unpublished]

	scope :recents,     -> { order(created_at: :desc) }
	scope :lasts,       -> { order(created_at: :asc)  }
	scope :by_title,    -> (title) { where(title: title) }
	scope :published,   -> { where(status: :published) }
	scope :unpublished, -> { where(status: :unpublished) }

	validates :title,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :description,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :content,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 5, maximum: 10_000 }

	validates :status,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						numericality: { only_integer: true }

	validates :tags,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 75 }
end
