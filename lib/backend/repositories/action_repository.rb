class ActionRepository < Hanami::Repository
  associations do
    belongs_to :event
  end
end
