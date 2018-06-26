class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.string	 :name
      t.string 	 :job
      t.string 	 :company
      t.text 		 :content

      t.timestamps
    end
  end
end
