class Country
  include Mongoid::Document
  field :name, type: String
  has_many :states, :autosave => true, :class_name => 'State', :dependent => :destroy
  accepts_nested_attributes_for :states, allow_destroy: true
  has_many :users, :class_name => "User"
end
