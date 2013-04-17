class User
  include Mongoid::Document
  field :name, type: String
  belongs_to :country, :class_name => "Country"
  belongs_to :state, :class_name => "State"
end
