class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.text :description
      t.string :email

      t.timestamps
    end
  end
end
