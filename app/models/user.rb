class User
  include Mongoid::Document
  field :name, type: String
  field :birthday, :type => Date
  validates_date :birthday
end
