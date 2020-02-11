class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :photo
  has_many :notes
  has_one :preference
end
