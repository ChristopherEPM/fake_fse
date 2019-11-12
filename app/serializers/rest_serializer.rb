class RestSerializer < ActiveModel::Serializer
  attributes :id, :app, :role, :user, :usecases
end
