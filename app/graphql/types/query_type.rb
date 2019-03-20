module Types
  class QueryType < Types::BaseObject
    field :hello_world, String, null: false
    def hello_world
      'Hello world'
    end
  end
end
