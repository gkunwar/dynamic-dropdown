class State
  include Mongoid::Document
  field :name, type: String
  belongs_to :country, :class_name => "Country"
end
