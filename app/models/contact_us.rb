class ContactUs                          #inheriting from db would be here

  include ActiveModel::Validations      #gives these as you dont have a database
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :subject, :body    # way of creating fields that dont exist in db and i can use as attributes want to be able to read and write them

  validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} } #:allow_blank => true

  def initialize(attributes={})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
   end

  def persisted?
    false
  end        # try to save data this will stop the save req in its tracks and come back with false as no where to save it to no db

end