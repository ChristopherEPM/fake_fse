class UsecaseSerializer < ActiveModel::Serializer
  attributes :id, :what, :hows
  belongs_to :rest
end
