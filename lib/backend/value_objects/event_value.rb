require "dry-struct"

class EventValue < Dry::Struct
  attribute :name, Hanami::Model::Types::String
  attribute :actions, Hanami::Model::Types::Array
end
