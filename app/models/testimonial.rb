class Testimonial < ApplicationRecord

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }


	validates :job,
						presence: true,
						uniqueness: false,
						allow_blank: true,
						length: { minimum: 3, maximum: 45 }

	validates :company,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :content,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 } 
end
