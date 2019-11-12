class UsecaseSerializer < ActiveModel::Serializer
  attributes :id, :what, :how
  belongs_to :rest
end
