class AddCompanyandtitleToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :company, :string
    add_column :testimonials, :title, :string
  end
end
